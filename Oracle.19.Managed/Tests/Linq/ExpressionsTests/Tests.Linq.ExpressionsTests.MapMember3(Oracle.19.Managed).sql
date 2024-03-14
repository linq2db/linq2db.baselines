BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 2

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ChildID" > :n
	) + 2
FROM
	"Parent" p

