-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
	) t1

