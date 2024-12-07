BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" > 2
		UNION
		SELECT
			p_1."ParentID"
		FROM
			"Parent" p_1
		WHERE
			p_1."ParentID" > 2
	) t1

