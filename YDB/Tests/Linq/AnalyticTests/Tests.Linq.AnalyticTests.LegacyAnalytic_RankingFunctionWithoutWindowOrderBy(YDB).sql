-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	ROW_NUMBER() OVER (PARTITION BY p.Value1) as c1
FROM
	Parent p

