BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "CreateTableTestClass"
(
	"TimeOffset" TimeStampTZ NOT NULL,
	"Guid"       uuid        NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @TimeOffset TimestampTZ -- DateTimeOffset
SET     @TimeOffset = '2017-06-17T16:40:33.0000000-03:00'
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "CreateTableTestClass"
(
	"TimeOffset",
	"Guid"
)
VALUES
(
	:TimeOffset,
	:Guid
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE "CreateTableTestClass"

