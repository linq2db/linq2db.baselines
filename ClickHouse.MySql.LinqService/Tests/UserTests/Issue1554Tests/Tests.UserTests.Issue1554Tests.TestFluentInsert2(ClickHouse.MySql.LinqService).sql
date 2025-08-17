BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO Issue1554FluentTable
(
	Id,
	ClaimedKeyType,
	ClaimedKeyTypeN
)
VALUES
(
	0,
	'EC',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554FluentTable t1
LIMIT 2

