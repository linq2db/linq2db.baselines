﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3830TestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue3830TestTable
(
	Id    Int32,
	Bool1 FixedString(1),
	Bool2 Nullable(FixedString(1)),
	Bool3 Nullable(FixedString(1))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue3830TestTable
(
	Id,
	Bool1,
	Bool2,
	Bool3
)
VALUES
(
	1,
	'Y',
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue3830TestTable
(
	Id,
	Bool1,
	Bool2,
	Bool3
)
VALUES
(
	2,
	'N',
	NULL,
	'Y'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue3830TestTable
(
	Id,
	Bool1,
	Bool2,
	Bool3
)
VALUES
(
	3,
	'N',
	'Y',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue3830TestTable
(
	Id,
	Bool1,
	Bool2,
	Bool3
)
VALUES
(
	4,
	'Y',
	'N',
	'Y'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y' AND r.Bool2 IS NULL AND r.Bool3 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y' AND r.Bool2 IS NULL AND r.Bool3 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	(r.Bool3 IS NULL OR r.Bool3 IS NULL) AND r.Bool1 = 'Y' AND
	r.Bool2 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = 'Y' AND r.Bool3 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N' AND r.Bool2 IS NULL AND r.Bool3 = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = 'Y' AND r.Bool1 = 'N' AND r.Bool2 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N' AND r.Bool2 IS NULL AND r.Bool3 = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NULL AND r.Bool1 = 'N' AND r.Bool3 = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N' AND r.Bool2 = 'Y' AND r.Bool3 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'N' AND r.Bool2 = 'Y' AND r.Bool3 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	(r.Bool3 IS NULL OR r.Bool3 IS NULL) AND r.Bool1 = 'N' AND
	r.Bool2 = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = 'N' AND r.Bool3 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y' AND r.Bool2 = 'N' AND r.Bool3 = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool1 = 'Y' AND r.Bool2 = 'N' AND r.Bool3 = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool3 = 'Y' AND r.Bool1 = 'Y' AND r.Bool2 = 'N'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Bool1,
	r.Bool2,
	r.Bool3
FROM
	Issue3830TestTable r
WHERE
	r.Bool2 IS NOT NULL AND r.Bool1 = 'Y' AND r.Bool3 = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3830TestTable

