BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > 2
		UNION DISTINCT
		SELECT
			p_1.ParentID as ParentID
		FROM
			Parent p_1
		WHERE
			p_1.ParentID > 2
	) t1

