-- ClickHouse.Octonica ClickHouse
INSERT INTO MappedEnumKeyRecord
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	0,
	'EC',
	'EC'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	MappedEnumKeyRecord t1
LIMIT 2

