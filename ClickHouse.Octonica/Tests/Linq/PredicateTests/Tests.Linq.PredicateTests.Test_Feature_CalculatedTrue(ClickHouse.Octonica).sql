BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FeatureTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.One = r.One) = (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.Zero = r.Zero) = (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.Null = r.Null) = (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.One = r.Zero) = (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.One = r.Null) = (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.Zero = r.Null) = (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.One = r.One) <> (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.Zero = r.Zero) <> (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.Null = r.Null) <> (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.One = r.Zero) <> (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.One = r.Null) <> (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	((r.Zero = r.Null) <> (1=1)) = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FeatureTable

