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
WHERE
	(r.One = r.One) IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FeatureTable

