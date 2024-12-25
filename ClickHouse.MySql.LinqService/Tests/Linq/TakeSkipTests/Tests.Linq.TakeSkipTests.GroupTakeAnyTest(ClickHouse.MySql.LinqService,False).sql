BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TakeSkipClass
(
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PIPPO'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PLUTO'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PLUTO'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'BOLTO'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	EXISTS(
		SELECT
			item_1.Value
		FROM
			TakeSkipClass item_1
		GROUP BY
			item_1.Value
		HAVING
			COUNT(*) > 1
		LIMIT 1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

