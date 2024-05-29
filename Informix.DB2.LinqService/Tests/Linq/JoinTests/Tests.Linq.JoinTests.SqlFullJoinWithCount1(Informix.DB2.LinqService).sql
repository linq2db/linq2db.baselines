BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.c1
FROM
	(
		SELECT
			CASE
				WHEN COUNT(left_1.ParentID) = COUNT(right_1.ParentID) AND COUNT(left_1.ParentID) = COUNT(*)
					THEN 't'
				ELSE 'f'
			END::BOOLEAN as c1
		FROM
			Parent left_1
				FULL JOIN Parent right_1 ON right_1.ParentID = left_1.ParentID
	) t1

