-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	CASE
		WHEN p.Value1 BETWEEN 1 AND 3 THEN true
		ELSE false
	END as c1,
	CASE
		WHEN p.Value1 NOT BETWEEN 1 AND 3 THEN true
		ELSE false
	END as c2
FROM
	Parent p

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

