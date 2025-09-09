BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT FIRST 2
	COUNT(t1.ParentID) = COUNT(right_2.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
FROM
	Parent t1
		FULL JOIN (
			SELECT
				right_1.ParentID
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> @id
		) right_2 ON right_2.ParentID = t1.ParentID

