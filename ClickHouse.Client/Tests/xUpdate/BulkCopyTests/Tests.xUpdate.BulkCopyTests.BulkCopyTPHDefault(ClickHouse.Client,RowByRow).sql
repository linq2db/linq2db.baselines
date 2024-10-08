BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TPHTableDefault

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TPHTableDefault
(
	Id            Int32,
	Discriminator Int32,
	Value1        Nullable(String),
	Value2        Nullable(String),
	Value3        Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TPHTableDefault
(
	Id,
	Discriminator,
	Value1
)
VALUES
(
	1,
	1,
	'Str1'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TPHTableDefault
(
	Id,
	Discriminator,
	Value2
)
VALUES
(
	2,
	2,
	'Str2'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TPHTableDefault
(
	Id,
	Discriminator,
	Value3
)
VALUES
(
	3,
	3,
	'Str3'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN t1.Discriminator = 3 THEN true
		ELSE false
	END,
	t1.Id,
	t1.Discriminator,
	t1.Value3,
	CASE
		WHEN t1.Discriminator = 2 THEN true
		ELSE false
	END,
	t1.Value2,
	CASE
		WHEN t1.Discriminator = 1 THEN true
		ELSE false
	END,
	t1.Value1,
	t1.Discriminator
FROM
	TPHTableDefault t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Discriminator,
	x.Value3,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Discriminator,
	x.Value3,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = 2
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Discriminator,
	x.Value3,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = 3
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Discriminator,
	x.Value3,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTableDefault x
WHERE
	x.Value1 = 'Str1'
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Discriminator,
	x.Value3,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTableDefault x
WHERE
	x.Value2 = 'Str2'
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN x.Discriminator = 3 THEN true
		ELSE false
	END,
	x.Id,
	x.Discriminator,
	x.Value3,
	CASE
		WHEN x.Discriminator = 2 THEN true
		ELSE false
	END,
	x.Value2,
	CASE
		WHEN x.Discriminator = 1 THEN true
		ELSE false
	END,
	x.Value1,
	x.Discriminator
FROM
	TPHTableDefault x
WHERE
	x.Value3 = 'Str3'
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TPHTableDefault

