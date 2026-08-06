-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ Boolean
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = FALSE

INSERT INTO "ExplicitComplexPropertyTarget"
(
	"Id",
	"Field"
)
VALUES
(
	@Id,
	@Tests_xUpdate_MergeTests_IExplicitComplexProperty_
)

-- Firebird.5 Firebird4
MERGE INTO "ExplicitComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", TRUE AS "TestsxUpdateMergeTestsIExplicitComplexPropertyField" FROM rdb$database) "Source"
(
	"Id",
	"TestsxUpdateMergeTestsIExplicitComplexPropertyField"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExplicitComplexPropertyField"

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ExplicitComplexPropertyTarget" "t1"
FETCH NEXT 2 ROWS ONLY

