﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < 2
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.ParentID,
	d.ParentID,
	d.ChildID,
	d.GrandChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID < 2
	) m_1
		INNER JOIN GrandChild d ON m_1.ParentID = d.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID < 2

