BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."Value1" + 1,
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" + 1 = 2 AND p."ParentID" = 1

