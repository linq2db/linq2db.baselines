BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	(
		SELECT FIRST 3
			*
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
	) t2

