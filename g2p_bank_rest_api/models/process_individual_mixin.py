from odoo import models


class ProcessIndividualMixin(models.AbstractModel):
    _inherit = "process_individual.rest.mixin"

    def _process_individual(self, individual):
        res = super()._process_individual(individual)
        if individual.model_dump().get("bank_ids", None):
            res["bank_ids"] = self._process_bank_ids(individual)
        return res

    def _process_bank_ids(self, registrant_info):
        bank_ids = []
        for rec in registrant_info.bank_ids:
            bank_name = self.env["res.bank"].sudo().search([("name", "=", rec.bank_name)])
            if bank_name:
                bank_name = bank_name[0]
            else:
                bank_name = self.env["res.bank"].sudo().create({"name": rec.bank_name})
            bank_ids.append(
                (
                    0,
                    0,
                    {
                        "bank_id": bank_name.id,
                        "acc_number": rec.acc_number,
                    },
                )
            )
        return bank_ids
