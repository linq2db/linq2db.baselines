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
			p.ParentID = 1
	) m_1
		INNER JOIN Child d ON m_1.ParentID = d.ParentID - 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1

