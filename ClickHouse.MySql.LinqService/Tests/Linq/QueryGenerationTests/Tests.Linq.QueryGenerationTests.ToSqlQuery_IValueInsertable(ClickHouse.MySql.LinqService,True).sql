﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

INSERT INTO TableWithIdentity
(
	Value
)
VALUES
(
	123
)

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1
LIMIT 2

