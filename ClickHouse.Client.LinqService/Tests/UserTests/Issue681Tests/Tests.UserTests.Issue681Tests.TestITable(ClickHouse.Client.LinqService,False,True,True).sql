﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	testdb2.Issue681Table t1

