BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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
		WHERE
			ROWNUM <= :take
	) p_1
ORDER BY
	p_1."ParentID" DESC

