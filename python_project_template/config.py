from prettyconf import config


class Settings:
    LOG_LEVEL = config("LOG_LEVEL", default="INFO")
    LOGGERS = config("LOGGERS", default="", cast=config.list)

    AWS_DEFAULT_REGION = config("AWS_DEFAULT_REGION")
    AWS_ACCESS_KEY_ID = config("AWS_ACCESS_KEY_ID")
    AWS_SECRET_ACCESS_KEY = config("AWS_SECRET_ACCESS_KEY")
    AWS_ENDPOINT_URL = config("AWS_ENDPOINT_URL", default=None)


settings = Settings()
