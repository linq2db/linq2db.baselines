-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Tests_xUpdate_MergeTests_IExpl Int16
SET     @Tests_xUpdate_MergeTests_IExpl = 0

INSERT INTO "ExplicitComplexPropertyTarget"
(
	"Id",
	"Field"
)
VALUES
(
	:Id,
	:Tests_xUpdate_MergeTests_IExpl
)

-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "ExplicitComplexPropertyTarget" Target
USING (
	SELECT 1 AS "Id", 1 AS "TestsxUpdateMergeTestsIExplicitComplexPropertyField" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExplicitComplexPropertyField"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field" as "TestsxUpdateMergeTestsIExplicitComplexPropertyField"
FROM
	"ExplicitComplexPropertyTarget" t1
FETCH NEXT 2 ROWS ONLY

