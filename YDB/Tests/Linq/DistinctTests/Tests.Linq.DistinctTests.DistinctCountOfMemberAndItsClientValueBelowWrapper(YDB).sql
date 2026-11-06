-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT DISTINCT
			c_1.ChildID as ChildID
		FROM
			Child c_1
	) t1

-- YDB Ydb
DECLARE $take Int32
SET     $take = 100

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT DISTINCT
			t1.ChildID as ChildID
		FROM
			(
				SELECT
					c_1.ChildID as ChildID
				FROM
					Child c_1
				LIMIT $take
			) t1
	) t2

