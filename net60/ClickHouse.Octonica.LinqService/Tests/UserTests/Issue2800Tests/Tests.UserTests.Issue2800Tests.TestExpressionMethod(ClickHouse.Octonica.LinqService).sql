BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Car

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Car
(
	Id   Int32,
	Name Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Car
(
	Id,
	Name
)
VALUES
(
	toInt32(1),
	'Special'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Car
(
	Id,
	Name
)
VALUES
(
	toInt32(2),
	'NoSpecial'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	(x.Name <> 'Special' OR x.Name IS NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	(x.Name <> 'Special' OR x.Name IS NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Car

