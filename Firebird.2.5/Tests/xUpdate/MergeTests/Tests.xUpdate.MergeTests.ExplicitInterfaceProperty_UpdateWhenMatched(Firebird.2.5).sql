-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ Char -- String
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = '0'

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

-- Firebird.2.5 Firebird
DECLARE @TestsxUpdateMergeTestsIExplicitComplexProperty Char -- String
SET     @TestsxUpdateMergeTestsIExplicitComplexProperty = '1'

MERGE INTO "ExplicitComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", CAST(@TestsxUpdateMergeTestsIExplicitComplexProperty AS CHAR(1)) AS "TestsxUpdateMergeTestsIExpl" FROM rdb$database) "Source"
(
	"Id",
	"TestsxUpdateMergeTestsIExpl"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExpl"

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Field"
FROM
	"ExplicitComplexPropertyTarget" "t1"

