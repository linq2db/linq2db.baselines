-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			gr."ParentID"
		FROM
			"Child" gr
	) t1

