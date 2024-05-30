﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TypeConvertTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TypeConvertTable
(
	Name      String,
	BoolValue FixedString(100),
	GuidValue Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TypeConvertTable
(
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	'NotVerified',
	'N',
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TypeConvertTable
(
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	'Verified',
	'Y',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TypeConvertTable

