BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

MERGE /*+ FULL(c_1) ALL_ROWS FIRST_ROWS(10) */ INTO "Parent" Target
USING (
	SELECT
		c_1."ParentID" as "source_ParentID",
		c_1."Value1" as "source_Value1"
	FROM
		"Parent" c_1
	WHERE
		c_1."ParentID" < -1111
) "Source"
ON (Target."ParentID" = "Source"."source_ParentID")

WHEN MATCHED THEN
UPDATE
SET
	"Value1" = "Source"."source_Value1"

