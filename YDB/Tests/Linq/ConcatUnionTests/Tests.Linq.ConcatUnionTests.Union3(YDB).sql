-- YDB Ydb

SELECT
	p.ParentID as id,
	Unwrap(CAST(true AS Bool)) as val
FROM
	Parent p
UNION
SELECT
	ch.ParentID as id,
	Unwrap(CAST(false AS Bool)) as val
FROM
	Child ch

