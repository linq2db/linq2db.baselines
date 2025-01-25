BeforeExecute
-- Informix.DB2 Informix
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2

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
						right_1.ParentID
					FROM
						Parent right_1
					WHERE
						right_1.ParentID <> @id2
				) right_2 ON right_2.ParentID = left_1.ParentID
	) t1

