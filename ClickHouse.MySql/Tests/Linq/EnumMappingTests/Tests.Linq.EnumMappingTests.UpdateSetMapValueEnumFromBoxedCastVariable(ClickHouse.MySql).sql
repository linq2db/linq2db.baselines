-- ClickHouse.MySql ClickHouse
INSERT INTO MappedEnumKeyRecord
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

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	MappedEnumKeyRecord
UPDATE
	ClaimedKeyType = 'EC',
	ClaimedKeyTypeN = 'EC'
WHERE
	Id = 0

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	MappedEnumKeyRecord t1
LIMIT 2

