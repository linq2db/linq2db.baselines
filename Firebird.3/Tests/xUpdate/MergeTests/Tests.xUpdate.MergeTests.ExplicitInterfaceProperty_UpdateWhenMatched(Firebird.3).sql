-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3

MERGE INTO "ExplicitComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", TRUE AS "TestsxUpdateMergeTestsIExpl" FROM rdb$database) "Source"
(
	"Id",
	"TestsxUpdateMergeTestsIExpl"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExpl"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ExplicitComplexPropertyTarget" "t1"
FETCH NEXT 2 ROWS ONLY

