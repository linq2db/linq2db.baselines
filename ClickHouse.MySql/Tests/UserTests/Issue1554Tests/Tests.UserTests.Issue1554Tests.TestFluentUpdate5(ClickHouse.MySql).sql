BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1554FluentTable
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

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Issue1554FluentTable
UPDATE
	ClaimedKeyType = 'EC',
	ClaimedKeyTypeN = 'EC'
WHERE
	Id = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554FluentTable t1
LIMIT 2

