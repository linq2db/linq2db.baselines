-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ TinyInt -- Byte
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = 0

INSERT INTO "ExplicitComplexPropertyTarget"
(
	"Id",
	"Field"
)
VALUES
(
	:"Id",
	:"Tests_xUpdate_MergeTests_IExplicitComplexProperty_"
)

-- SapHana.Native SapHana
MERGE INTO "ExplicitComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", 1 AS "TestsxUpdateMergeTestsIExplicitComplexPropertyField" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExplicitComplexPropertyField"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ExplicitComplexPropertyTarget" "t1"
LIMIT 2

