﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'Hall')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	startsWith(r.Diagnosis, 'hall')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Patient r
WHERE
	startsWith(lowerUTF8(r.Diagnosis), 'hall')

