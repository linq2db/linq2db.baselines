﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	Value1 = 11 AND Value1 IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	c_1.ParentID + 1000,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.Value1 = 11 AND p.Value1 IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	Value1 = 11 AND Value1 IS NOT NULL

