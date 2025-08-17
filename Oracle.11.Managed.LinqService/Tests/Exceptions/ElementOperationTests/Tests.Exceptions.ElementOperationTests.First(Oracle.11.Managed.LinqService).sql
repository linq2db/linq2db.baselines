BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 100 AND ROWNUM <= 1

