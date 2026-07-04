-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	Unwrap(CAST(true AS Bool)) as val
FROM
	Parent p
UNION
SELECT
	ch.ParentID as ParentID,
	Unwrap(CAST(false AS Bool)) as val
FROM
	Child ch

