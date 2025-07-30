BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue1622Table
(
	Id,
	SomeText
)
VALUES
(
	1,
	'Value1_suffix'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.SomeText = 'Value1_suffix'
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.Id = 1
LIMIT 2

