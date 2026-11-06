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
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT DISTINCT
			x.ChildID as ChildID
		FROM
			Child x
		WHERE
			x.ChildID > 20
	) t1

-- YDB Ydb
SELECT
	MAX(t1.ChildID) as Max_1
FROM
	(
		SELECT DISTINCT
			c_1.ChildID as ChildID
		FROM
			Child c_1
	) t1

