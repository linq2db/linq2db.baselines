BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FeatureTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS FeatureTable
(
	Id       Int32,
	One      Nullable(Int32),
	Zero     Nullable(Int32),
	Null     Nullable(Int32),
	True     Nullable(Bool),
	False    Nullable(Bool),
	BoolNull Nullable(Bool)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO FeatureTable
(
	Id,
	One,
	Zero,
	Null,
	True,
	False,
	BoolNull
)
VALUES
(1,1,0,NULL,true,false,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.Zero IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.Null IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) = (r.Null IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.Zero IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.Null IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) <> (r.Null IS NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FeatureTable

