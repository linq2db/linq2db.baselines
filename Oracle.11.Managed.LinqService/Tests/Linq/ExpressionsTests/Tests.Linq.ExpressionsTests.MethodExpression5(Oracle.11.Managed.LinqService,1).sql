BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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

