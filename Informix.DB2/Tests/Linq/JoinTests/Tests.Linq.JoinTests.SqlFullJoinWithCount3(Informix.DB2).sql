BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT FIRST 2
	t1.c1
FROM
	(
		SELECT
			CASE
				WHEN COUNT(left_1.ParentID) = COUNT(right_2.ParentID) AND COUNT(left_1.ParentID) = COUNT(*)
					THEN 't'
				ELSE 'f'
			END::BOOLEAN as c1
		FROM
			Parent left_1
				FULL JOIN (
					SELECT
						right_1.ParentID
					FROM
						Parent right_1
					WHERE
						right_1.ParentID <> @id
				) right_2 ON right_2.ParentID = left_1.ParentID
	) t1

