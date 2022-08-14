BeforeExecute
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
	Count(*)
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'N'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'Y'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	TypeConvertTable _
WHERE
	_.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'N'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'Y'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'N'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'Y'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'N'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'Y'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'N'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'Y'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'N'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.BoolValue = 'Y'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.Name,
	_.BoolValue,
	_.GuidValue
FROM
	TypeConvertTable _
WHERE
	_.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TypeConvertTable

