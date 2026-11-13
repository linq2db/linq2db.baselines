-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) t1

