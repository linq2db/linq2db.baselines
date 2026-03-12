-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TestMergeIdentity" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Field Integer -- Int32
SET     @Field = NULL

INSERT INTO "TestMergeIdentity"
(
	"Field"
)
VALUES
(
	:Field
)

-- PostgreSQL.18 PostgreSQL

SELECT
	MAX(t1."Id")
FROM
	"TestMergeIdentity" t1

-- PostgreSQL.18 PostgreSQL

MERGE INTO "TestMergeIdentity" "Target"
USING (VALUES
	(22), (23)
) "Source"
(
	"Field"
)
ON ("Target"."Field" = "Source"."Field" OR "Target"."Field" IS NULL AND "Source"."Field" IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	"Field"
)
VALUES
(
	"Source"."Field"
)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Field"
FROM
	"TestMergeIdentity" t1
ORDER BY
	t1."Id"

