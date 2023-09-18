BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterTarget"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestNullableParameterTarget"
(
	"Id1" Int NOT NULL,
	"Id2" Int NOT NULL,

	CONSTRAINT "PK_TestNullableParameterTarget" PRIMARY KEY ("Id1", "Id2")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterSource"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestNullableParameterSource"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_TestNullableParameterSource" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

MERGE INTO "TestNullableParameterTarget" "Target"
USING (
	SELECT
		2 as source_field0,
		t1."Id"
	FROM
		"TestNullableParameterSource" t1
	WHERE
		t1."Id" IS NULL
) "Source"
(
	source_field0,
	"Id"
)
ON ("Target"."Id1" = "Source".source_field0 AND "Target"."Id2" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id1",
	"Id2"
)
VALUES
(
	"Source".source_field0,
	"Source"."Id"
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

MERGE INTO "TestNullableParameterTarget" "Target"
USING (
	SELECT
		2 as source_field0,
		t1."Id"
	FROM
		"TestNullableParameterSource" t1
	WHERE
		t1."Id" = :id
) "Source"
(
	source_field0,
	"Id"
)
ON ("Target"."Id1" = "Source".source_field0 AND "Target"."Id2" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id1",
	"Id2"
)
VALUES
(
	"Source".source_field0,
	"Source"."Id"
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterSource"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterTarget"

