BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Car

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Car
(
	Id   Int32,
	Name Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	(x.Name <> 'Special' OR x.Name IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	(x.Name <> 'Special' OR x.Name IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Car

