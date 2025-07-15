BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			p_1."ParentID" = a_Children."ParentID"
	)
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		FETCH NEXT :take ROWS ONLY
	) p_1
ORDER BY
	p_1."ParentID" DESC

