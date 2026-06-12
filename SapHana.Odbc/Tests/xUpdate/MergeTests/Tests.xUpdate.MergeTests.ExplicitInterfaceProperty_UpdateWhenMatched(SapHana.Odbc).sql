-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_Field TinyInt(1) -- Byte
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_Field = 0

INSERT INTO "ExplicitComplexPropertyTarget"
(
	"Id",
	"Field"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

MERGE INTO "ExplicitComplexPropertyTarget" "Target"
USING (
	SELECT 1 AS "Id", 1 AS "TestsxUpdateMergeTestsIExplicitComplexPropertyField" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExplicitComplexPropertyField"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ExplicitComplexPropertyTarget" "t1"
LIMIT 2

