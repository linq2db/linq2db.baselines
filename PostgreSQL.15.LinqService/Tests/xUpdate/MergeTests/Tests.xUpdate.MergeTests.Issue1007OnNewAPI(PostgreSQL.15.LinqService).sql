BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMergeIdentity" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

SELECT
	MAX(t1."Id")
FROM
	"TestMergeIdentity" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "TestMergeIdentity" "Target"
USING (VALUES
	(10)
) "Source"
(
	"Field"
)
ON ("Target"."Field" IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	"Field"
)
VALUES
(
	"Source"."Field"
)

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."Field"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Field"
FROM
	"TestMergeIdentity" t1
ORDER BY
	t1."Id"

