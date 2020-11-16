BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	(
		SELECT
			c_1.ParentID,
			3 as RandValue
		FROM
			Child c_1
	) t1
GROUP BY
	t1.ParentID

