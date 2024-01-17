BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	minOrNull(t1.ParentID)
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		ORDER BY
			p.Value1
		LIMIT toInt32(3)
	) t1

