-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	) + :n
FROM
	"Parent" p

