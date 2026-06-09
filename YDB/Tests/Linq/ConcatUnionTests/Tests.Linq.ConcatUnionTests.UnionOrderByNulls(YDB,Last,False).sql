-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	(
		SELECT
			p.Value1 as Value1,
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < 5
		UNION
		SELECT
			p_1.Value1 as Value1,
			p_1.ParentID as ParentID
		FROM
			Parent p_1
		WHERE
			p_1.ParentID >= 3
	) t1
ORDER BY
	CASE
		WHEN t1.Value1 IS NULL THEN 1
		ELSE 0
	END,
	t1.Value1,
	t1.ParentID
LIMIT $take

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

