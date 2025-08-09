BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Name,
	t1.BoolValue,
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'
LIMIT 1

