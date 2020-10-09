BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT FIRST 2 
	COUNT(left_1.ParentID), 
	COUNT(t1.ParentID), 
	COUNT(*)
FROM
	Parent left_1
		FULL JOIN ( 
			SELECT 
				p.ParentID
			FROM
				Parent p
			WHERE
				p.ParentID <> @id
		) t1 ON t1.ParentID = left_1.ParentID

