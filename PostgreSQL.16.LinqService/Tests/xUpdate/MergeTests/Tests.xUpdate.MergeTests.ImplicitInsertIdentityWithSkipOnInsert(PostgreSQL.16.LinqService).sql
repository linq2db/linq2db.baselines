BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

DELETE FROM
	"TestMergeIdentity" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	MAX(t1."Id")
FROM
	"TestMergeIdentity" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Field"
FROM
	"TestMergeIdentity" t1
ORDER BY
	t1."Id"

