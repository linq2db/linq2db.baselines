﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Child p
		LEFT JOIN Parent a_Parent ON p.ParentID = a_Parent.ParentID
WHERE
	a_Parent.ParentID = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Child p
		LEFT JOIN Parent a_Parent ON p.ParentID = a_Parent.ParentID
WHERE
	a_Parent.ParentID = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_Parent.ParentID
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID

