-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ Boolean
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = False

INSERT INTO "ExplicitComplexPropertyTarget"
(
	"Id",
	"Field"
)
VALUES
(
	:Id,
	:Tests_xUpdate_MergeTests_IExplicitComplexProperty_
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

MERGE INTO "ExplicitComplexPropertyTarget" "Target"
USING (VALUES
	(1,True)
) "Source"
(
	"Id",
	"TestsxUpdateMergeTestsIExplicitComplexPropertyField"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExplicitComplexPropertyField"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Field"
FROM
	"ExplicitComplexPropertyTarget" t1
LIMIT 2

