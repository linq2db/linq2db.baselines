BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterTarget"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestNullableParameterTarget"
(
	"Id1" Int NOT NULL,
	"Id2" Int NOT NULL,

	CONSTRAINT "PK_TestNullableParameterTarget" PRIMARY KEY ("Id1", "Id2")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterSource"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestNullableParameterSource"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_TestNullableParameterSource" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "TestNullableParameterTarget" "Target"
USING (
	SELECT
		2 as "source_Id1",
		t1."Id" as "source_Id2"
	FROM
		"TestNullableParameterSource" t1
	WHERE
		1 = 0
) "Source"
(
	"source_Id1",
	"source_Id2"
)
ON ("Target"."Id1" = "Source"."source_Id1" AND "Target"."Id2" = "Source"."source_Id2")

WHEN NOT MATCHED THEN
INSERT
(
	"Id1",
	"Id2"
)
VALUES
(
	"Source"."source_Id1",
	"Source"."source_Id2"
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

MERGE INTO "TestNullableParameterTarget" "Target"
USING (
	SELECT
		2 as "source_Id1",
		t1."Id" as "source_Id2"
	FROM
		"TestNullableParameterSource" t1
	WHERE
		t1."Id" = :id
) "Source"
(
	"source_Id1",
	"source_Id2"
)
ON ("Target"."Id1" = "Source"."source_Id1" AND "Target"."Id2" = "Source"."source_Id2")

WHEN NOT MATCHED THEN
INSERT
(
	"Id1",
	"Id2"
)
VALUES
(
	"Source"."source_Id1",
	"Source"."source_Id2"
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterSource"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestNullableParameterTarget"

