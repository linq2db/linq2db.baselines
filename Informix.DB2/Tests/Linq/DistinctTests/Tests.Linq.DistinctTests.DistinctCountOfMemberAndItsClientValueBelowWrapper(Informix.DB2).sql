-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			c_1.ChildID
		FROM
			Child c_1
	) t1

-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 100

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			t1.ChildID
		FROM
			(
				SELECT FIRST @take
					c_1.ChildID
				FROM
					Child c_1
			) t1
	) t2

