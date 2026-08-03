-- YDB Ydb
SELECT
	CASE
		WHEN i.item = 0 THEN NULL
		ELSE p.ParentID
	END as ID,
	p.Value1 as Value1
FROM
	Parent p
		CROSS JOIN (VALUES
			(0), (1)
		) i(item)
WHERE
	CASE
		WHEN i.item = 0 THEN NULL
		ELSE p.ParentID
	END = p.Value1 OR
	i.item = 0 AND p.Value1 IS NULL

