﻿BeforeExecute
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
	'PLUTO'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PIPPO'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'PLUTO'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TakeSkipClass
(
	Value
)
VALUES
(
	'BOLTO'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TakeSkipClass

