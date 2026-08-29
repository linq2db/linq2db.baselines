-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	ROW_NUMBER() OVER () as c1,
	ROW_NUMBER() OVER (ORDER BY p.ParentID) as c2,
	ROW_NUMBER() OVER (ORDER BY p.ParentID) as c3
FROM
	Parent p

