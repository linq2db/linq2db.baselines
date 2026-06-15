-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			t1.PersonID as PersonID
		FROM
			Person t1
		UNION
		SELECT
			t2.ParentID as PersonID
		FROM
			Parent t2
	) t3

