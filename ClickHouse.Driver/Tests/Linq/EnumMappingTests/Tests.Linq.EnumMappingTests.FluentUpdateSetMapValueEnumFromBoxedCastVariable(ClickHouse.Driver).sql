-- ClickHouse.Driver ClickHouse
INSERT INTO FluentMappedEnumKeyRecord
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	0,
	'RSA',
	'RSA'
)

-- ClickHouse.Driver ClickHouse
ALTER TABLE
	FluentMappedEnumKeyRecord
UPDATE
	ClaimedKeyType = 'EC',
	ClaimedKeyTypeN = 'EC'
WHERE
	Id = 0

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	FluentMappedEnumKeyRecord t1
LIMIT 2

