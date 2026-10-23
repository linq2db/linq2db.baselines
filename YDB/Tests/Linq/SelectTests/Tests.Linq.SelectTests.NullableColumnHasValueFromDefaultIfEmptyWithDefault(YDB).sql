-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	CASE
		WHEN p2.ParentID IS NOT NULL THEN p2.Value1
		ELSE 5
	END as Value1,
	CASE
		WHEN CASE
			WHEN p2.ParentID IS NOT NULL THEN p2.Value1
			ELSE 5
		END IS NOT NULL
			THEN CASE
			WHEN p2.ParentID IS NOT NULL THEN p2.Value1
			ELSE 5
		END
		ELSE -1
	END as V
FROM
	Parent p
		LEFT JOIN Parent p2 ON p2.ParentID = p.ParentID + 100

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	Parent t1

