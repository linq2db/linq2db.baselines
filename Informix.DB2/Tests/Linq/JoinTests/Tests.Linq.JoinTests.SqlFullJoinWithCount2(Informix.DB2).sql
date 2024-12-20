BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT FIRST 2
	CASE
		WHEN COUNT(t1.ParentID) = COUNT(right_1.ParentID) AND COUNT(t1.ParentID) = COUNT(*)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	(
		SELECT
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID <> @id
	) t1
		FULL JOIN Parent right_1 ON right_1.ParentID = t1.ParentID

