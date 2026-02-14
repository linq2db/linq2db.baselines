-- ClickHouse.Driver ClickHouse

SELECT
	EXISTS(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		UNION ALL
		SELECT
			p_1.ParentID as ParentID
		FROM
			Parent p_1
	)

