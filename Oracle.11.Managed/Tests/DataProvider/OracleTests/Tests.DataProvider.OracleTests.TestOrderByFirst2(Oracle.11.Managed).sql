BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."Value1" = 1 AND ROWNUM <= 1

