﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO testdb2.Issue681Table
(
	ID,
	Value
)
VALUES
(
	5,
	10
)

