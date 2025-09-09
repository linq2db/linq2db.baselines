BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO Issue1554Table
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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.ClaimedKeyType,
	t1.ClaimedKeyTypeN
FROM
	Issue1554Table t1
LIMIT 2

