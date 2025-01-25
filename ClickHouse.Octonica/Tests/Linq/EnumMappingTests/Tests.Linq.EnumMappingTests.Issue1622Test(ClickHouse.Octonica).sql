BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1622Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue1622Table
(
	Id       Int32,
	SomeText Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.SomeText = 'Value1_suffix'
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1622Table

