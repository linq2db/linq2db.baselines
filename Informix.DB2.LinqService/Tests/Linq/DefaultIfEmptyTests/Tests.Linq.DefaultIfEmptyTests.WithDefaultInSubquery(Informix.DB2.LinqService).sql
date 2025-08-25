BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(
		SELECT
			SUM(CASE
				WHEN d.ParentID IS NOT NULL THEN d.ParentID
				ELSE -100
			END)
		FROM
			(
				SELECT
					-100 as ParentID
				FROM table(set{1})
			) t1
				LEFT JOIN Child d ON p.ParentID = d.ParentID
	)
FROM
	Parent p

