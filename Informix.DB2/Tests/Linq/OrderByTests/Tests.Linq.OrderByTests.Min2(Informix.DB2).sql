BeforeExecute
-- Informix.DB2 Informix

SELECT
	MIN(t2.ParentID)
FROM
	(
		SELECT FIRST 3
			t1.ParentID
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
	) t2

