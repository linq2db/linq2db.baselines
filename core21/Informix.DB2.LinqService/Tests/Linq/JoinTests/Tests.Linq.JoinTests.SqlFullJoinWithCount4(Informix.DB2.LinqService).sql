BeforeExecute
-- Informix.DB2 Informix
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2

SELECT FIRST 2 
	COUNT(left_1.ParentID), 
	COUNT(t1.ParentID), 
	COUNT(*)
FROM
	( 
		SELECT 
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> @id1
	) left_1
		FULL JOIN ( 
			SELECT 
				p_1.ParentID
			FROM
				Parent p_1
			WHERE
				p_1.ParentID <> @id2
		) t1 ON t1.ParentID = left_1.ParentID

