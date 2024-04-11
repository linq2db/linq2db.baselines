BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTestClass"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "CreateTableTestClass"
(
	"TimeOffset" TimeStampTZ NOT NULL,
	"Guid"       uuid        NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @TimeOffset TimestampTz -- DateTime
SET     @TimeOffset = '2017-06-17T19:40:33.0000000+00:00'
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid

SELECT
	t1."TimeOffset",
	t1."Guid"
FROM
	"CreateTableTestClass" t1
WHERE
	t1."Guid" = :Guid
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTestClass"

