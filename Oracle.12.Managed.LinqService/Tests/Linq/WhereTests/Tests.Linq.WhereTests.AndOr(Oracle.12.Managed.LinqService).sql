BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1 OR (p."ParentID" = 2 OR p."ParentID" = 3) AND (p."ParentID" = 3 OR p."ParentID" = 1)

