BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	(
		SELECT
			gr."ParentID" as "Key_1"
		FROM
			"Child" gr
		GROUP BY
			gr."ParentID"
	) t1

