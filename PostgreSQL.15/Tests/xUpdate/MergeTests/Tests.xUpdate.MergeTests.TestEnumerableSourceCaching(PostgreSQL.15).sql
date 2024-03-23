BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CacheTestTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CacheTestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_CacheTestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "CacheTestTable" "Target"
USING (VALUES
	(1,1), (2,2)
) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "CacheTestTable" "Target"
USING (VALUES
	(1,1), (2,4), (3,3)
) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CacheTestTable"

