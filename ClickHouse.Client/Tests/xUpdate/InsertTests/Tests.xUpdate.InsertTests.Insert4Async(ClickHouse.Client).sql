﻿BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	c_1.ParentID,
	1001
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	Child
DELETE WHERE
	ChildID > 1000

