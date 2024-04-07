BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			Count(*)
		FROM
			Child t1
		WHERE
			p.ParentID = t1.ParentID
	)
FROM
	(
		SELECT FIRST 5
			t2.ParentID
		FROM
			Parent t2
	) p
ORDER BY
	p.ParentID DESC

