-- YDB Ydb

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Child t1
	) as a,
	x.ParentID <> 0 as b
FROM
	Parent x
UNION ALL
SELECT
	EXISTS(
		SELECT
			1
		FROM
			Child t2
	) as a,
	CAST(NULL AS Bool) as b
FROM
	Parent x_1

