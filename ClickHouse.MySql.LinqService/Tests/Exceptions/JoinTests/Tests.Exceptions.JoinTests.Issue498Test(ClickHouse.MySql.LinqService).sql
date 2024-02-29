BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID
FROM
	Parent x
		INNER JOIN Child y ON x.ParentID = y.ParentID
GROUP BY
	x.ParentID

