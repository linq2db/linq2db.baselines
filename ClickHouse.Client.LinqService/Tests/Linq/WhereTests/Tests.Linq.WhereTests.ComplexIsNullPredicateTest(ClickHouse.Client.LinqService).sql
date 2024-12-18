BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ComplexPredicate

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ComplexPredicate
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ComplexPredicate
(
	Id,
	Value
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ComplexPredicate
(
	Id,
	Value
)
VALUES
(
	2,
	'other'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ComplexPredicate
(
	Id,
	Value
)
VALUES
(
	3,
	'123'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ComplexPredicate
(
	Id,
	Value
)
VALUES
(
	4,
	'test'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ComplexPredicate
(
	Id,
	Value
)
VALUES
(
	5,
	'1'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	ComplexPredicate r
WHERE
	CASE
		WHEN r.Value = '123' AND r.Value IS NOT NULL THEN true
		ELSE false
	END = CASE
		WHEN r.Value = '1' AND r.Value IS NOT NULL OR r.Value = 'test' AND r.Value IS NOT NULL AND (r.Value <> '1' OR r.Value IS NULL)
			THEN true
		ELSE false
	END
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	ComplexPredicate t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ComplexPredicate

