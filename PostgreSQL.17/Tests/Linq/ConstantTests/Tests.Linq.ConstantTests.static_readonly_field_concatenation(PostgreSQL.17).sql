BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestConstantsData"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestConstantsData"
(
	"Id"                Int  NOT NULL,
	"GuidValue"         uuid NOT NULL,
	"GuidNullableValue" uuid     NULL,
	"StringValue"       text     NULL,

	CONSTRAINT "PK_TestConstantsData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "TestConstantsData"
(
	"Id",
	"GuidValue",
	"GuidNullableValue",
	"StringValue"
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,'StrValue')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."StringValue" || '1' = 'StrValue1'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestConstantsData"

