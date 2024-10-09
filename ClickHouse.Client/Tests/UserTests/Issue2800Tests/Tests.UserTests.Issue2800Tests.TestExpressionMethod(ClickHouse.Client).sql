BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Car

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Car
(
	Id   Int32,
	Name Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Car
(
	Id,
	Name
)
VALUES
(1,'Special'),
(2,'NoSpecial')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name <> 'Special' OR x.Name IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name <> 'Special' OR x.Name IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Car

