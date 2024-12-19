BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestConstantsData"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestConstantsData"
(
	"Id"                Int  NOT NULL,
	"GuidValue"         uuid NOT NULL,
	"GuidNullableValue" uuid     NULL,
	"StringValue"       text     NULL,

	CONSTRAINT "PK_TestConstantsData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @GuidNullableValue Uuid -- Guid
SET     @GuidNullableValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @StringValue Text(8) -- String
SET     @StringValue = 'StrValue'

INSERT INTO "TestConstantsData"
(
	"Id",
	"GuidValue",
	"GuidNullableValue",
	"StringValue"
)
VALUES
(
	:Id,
	:GuidValue,
	:GuidNullableValue,
	:StringValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InitOnlyId Integer -- Int32
SET     @InitOnlyId = 1

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = :Id AND e."Id" = :InitOnlyId

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InitOnlyId Integer -- Int32
SET     @InitOnlyId = 1

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = :Id AND e."Id" = :InitOnlyId

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestConstantsData"

