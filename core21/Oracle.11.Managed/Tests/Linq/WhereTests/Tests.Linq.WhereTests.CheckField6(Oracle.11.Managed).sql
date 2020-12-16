BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p_1."Value1",
	p_1."Value1" * 100,
	p_1."ParentID"
FROM
	"Parent" p_1
WHERE
	p_1."ParentID" = 1 AND p_1."Value1" * 100 > 0

