BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			p.ParentID as ID
		FROM
			Parent p
		WHERE
			p.ParentID > toInt32(2)
		UNION DISTINCT
		SELECT
			p_1.ParentID as ID
		FROM
			Parent p_1
		WHERE
			p_1.ParentID > toInt32(2)
	) t1

