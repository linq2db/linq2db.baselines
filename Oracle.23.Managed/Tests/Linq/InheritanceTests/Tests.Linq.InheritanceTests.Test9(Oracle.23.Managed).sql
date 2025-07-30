BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	(p."ParentID" = 1 OR p."ParentID" = 2 OR p."ParentID" = 4) AND
	p."Value1" IS NULL

