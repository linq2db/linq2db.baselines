BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Parent p1
		WHERE
			p1.ParentID = p.ParentID
	)
FROM
	Parent p

