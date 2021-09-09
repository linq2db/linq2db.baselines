BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			ch.ParentID
		FROM
			Child ch
		WHERE
			ch.ParentID = p.ParentID
	)
FROM
	Parent p
WHERE
	p.ParentID = 1

