[
    {
        "id": .credential_type,
        "format": .supported_format,
        "scope": .scope,
        "cryptographic_binding_methods_supported": [
            "did:jwk"
        ],
        "credential_signing_alg_values_supported": [
            "RS256"
        ],
        "proof_types_supported": [
            "jwt"
        ],
        "credential_definition": {
            "type": [
                "VerifiableCredential",
                .credential_type
            ],
            "credentialSubject": {
                "fullName": {
                    "display": [
                        {
                            "name": "Name",
                            "locale": "en"
                        }
                    ]
                },
                "gender": {
                    "display": [
                        {
                            "name": "Gender",
                            "locale": "en"
                        }
                    ]
                },
                "dateOfBirth": {
                    "display": [
                        {
                            "name": "Date of Birth",
                            "locale": "en"
                        }
                    ]
                },
                "addressLine1": {
                    "display": [
                        {
                            "name": "Address Line 1",
                            "locale": "en"
                        }
                    ]
                },
                "locality": {
                    "display": [
                        {
                            "name": "Locality",
                            "locale": "en"
                        }
                    ]
                },
                "region": {
                    "display": [
                        {
                            "name": "region",
                            "locale": "en"
                        }
                    ]
                },
                "UIN": {
                    "display": [
                        {
                            "name": "Registrant ID",
                            "locale": "en"
                        }
                    ]
                },
                "nationalID": {
                    "display": [
                        {
                            "name": "National ID",
                            "locale": "en"
                        }
                    ]
                }
            }
        },
        "display": [
            {
                "name": .name,
                "locale": "en",
                "logo": {
                    "url": (.web_base_url + "/g2p_openid_vci/static/description/icon.png"),
                    "alt_text": "a square logo of a OpenG2P"
                },
                "background_color": "#13b9cf",
                "text_color": "#19234f"
            }
        ],
        "order": [
            "fullName",
            "UIN",
            "gender",
            "dateOfBirth",
            "addressLine1",
            "locality",
            "region"
        ]
    }
]
