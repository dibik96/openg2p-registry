from odoo.addons.g2p_registry_rest_api.models import registrant


class RegistrantAddlInfoIn(registrant.RegistrantInfoIn, extends=registrant.RegistrantInfoIn):
    additional_g2p_info: list[dict] | dict = None


class RegistrantAddlInfoOut(registrant.RegistrantInfoOut, extends=registrant.RegistrantInfoOut):
    additional_g2p_info: str = ""
