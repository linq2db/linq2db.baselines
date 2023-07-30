BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			Count(*)
		FROM
			Child c_1
		WHERE
			c_1.ParentID = p.ParentID
	)
FROM
	Parent p

