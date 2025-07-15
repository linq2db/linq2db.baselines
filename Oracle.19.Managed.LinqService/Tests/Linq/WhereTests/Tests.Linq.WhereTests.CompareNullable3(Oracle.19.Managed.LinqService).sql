BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" = p."ParentID" AND p."Value1" = 1

