BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 3

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			a_Children."ChildID" > :n AND p."ParentID" = a_Children."ParentID"
	) + 4
FROM
	"Parent" p

