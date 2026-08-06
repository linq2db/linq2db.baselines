-- Informix.DB2 Informix
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2

SELECT FIRST 2
	COUNT(t1.ParentID) = COUNT(right_2.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
FROM
	(
		SELECT
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> @id1
	) t1
		FULL JOIN (
			SELECT
				right_1.ParentID
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> @id2
		) right_2 ON right_2.ParentID = t1.ParentID

