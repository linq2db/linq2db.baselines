﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001

