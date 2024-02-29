BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PERSON_1900

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS PERSON_1900
(
	AGE     Int32,
	NAME    Nullable(String),
	OPTIONS Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PERSON_1900
(
	AGE,
	NAME,
	OPTIONS
)
VALUES
(toInt32(10),'Some',toInt32(4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.AGE,
	p.NAME,
	bitAnd(p.OPTIONS, toInt32(15))
FROM
	PERSON_1900 p
WHERE
	(bitAnd(p.OPTIONS, toInt32(15)) = toInt32(4) OR bitAnd(p.OPTIONS, toInt32(15)) = toInt32(5))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PERSON_1900

