-- ClickHouse.Driver ClickHouse

INSERT INTO Issue1554Table
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
	Issue1554Table
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
	Issue1554Table t1
LIMIT 2

