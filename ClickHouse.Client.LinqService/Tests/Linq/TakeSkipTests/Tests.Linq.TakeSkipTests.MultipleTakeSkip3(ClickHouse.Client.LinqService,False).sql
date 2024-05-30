BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TakeSkipClass
(
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value1'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value2'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value3'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value4'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value5'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value6'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value7'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value8'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'Value9'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
LIMIT 3, 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

