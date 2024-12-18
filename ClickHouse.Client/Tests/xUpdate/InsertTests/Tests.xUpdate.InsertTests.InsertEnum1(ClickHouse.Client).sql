﻿BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID = 1001 AND t1.Value1 = 2 AND t1.Value1 IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

