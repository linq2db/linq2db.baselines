BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			p."ParentID" as ID
		FROM
			"Parent" p
		WHERE
			p."ParentID" > 2
		UNION
		SELECT
			p_1."ParentID" as ID
		FROM
			"Parent" p_1
		WHERE
			p_1."ParentID" > 2
	) t1

