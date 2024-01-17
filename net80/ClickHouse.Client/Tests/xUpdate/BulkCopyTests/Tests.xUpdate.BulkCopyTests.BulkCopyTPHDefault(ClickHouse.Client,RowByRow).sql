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
	toInt32(1),
	toInt32(1),
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
	toInt32(2),
	toInt32(2),
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
	toInt32(3),
	toInt32(3),
	'Str3'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Discriminator,
	t1.Value1,
	t1.Value2,
	t1.Value3
FROM
	TPHTableDefault t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = toInt32(1)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = toInt32(2)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3
FROM
	TPHTableDefault x
WHERE
	x.Discriminator = toInt32(3)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3
FROM
	TPHTableDefault x
WHERE
	x.Value1 = 'Str1'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3
FROM
	TPHTableDefault x
WHERE
	x.Value2 = 'Str2'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Discriminator,
	x.Value1,
	x.Value2,
	x.Value3
FROM
	TPHTableDefault x
WHERE
	x.Value3 = 'Str3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TPHTableDefault

