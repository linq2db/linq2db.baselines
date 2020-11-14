BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT
					c_1.ParentID + 1 as ID
				FROM
					Child c_1
				WHERE
					p1.ParentID = c_1.ParentID
			) c_2
		WHERE
			c_2.ID < p1.ParentID + 1
	)
FROM
	Parent p1
WHERE
	p1.ParentID > -1

