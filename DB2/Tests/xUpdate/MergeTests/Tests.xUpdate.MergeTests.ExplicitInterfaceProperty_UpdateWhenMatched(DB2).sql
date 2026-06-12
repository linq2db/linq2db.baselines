-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ SmallInt(4) -- Int16
SET     @Tests_xUpdate_MergeTests_IExplicitComplexProperty_ = 0

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

-- DB2 DB2.LUW DB2LUW

MERGE INTO "ExplicitComplexPropertyTarget" "Target"
USING (VALUES
	(1,1)
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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"ExplicitComplexPropertyTarget" "t1"
FETCH NEXT 2 ROWS ONLY

