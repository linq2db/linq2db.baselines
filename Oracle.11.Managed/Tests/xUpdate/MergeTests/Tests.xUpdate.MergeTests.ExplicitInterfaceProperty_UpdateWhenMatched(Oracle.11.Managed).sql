-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11

MERGE INTO "ExplicitComplexPropertyTarget" Target
USING (
	SELECT 1 AS "Id", 1 AS "TestsxUpdateMergeTestsIExp" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Field" = "Source"."TestsxUpdateMergeTestsIExp"

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Field"
FROM
	"ExplicitComplexPropertyTarget" t1
WHERE
	ROWNUM <= 2

