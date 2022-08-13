﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TextData

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TextData
(
	Id     Int32,
	Items1 Nullable(String),
	Items2 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TextData
(
	Id,
	Items1,
	Items2
)
VALUES
(toInt32(1),'T1','Z1'),
(toInt32(2),'T2','Z2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TextData
UPDATE
	Items1 = concat(Items1, 'yy'),
	Items2 = concat(Items2, 'yy')
WHERE
	Id >= toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Items1,
	t1.Items2
FROM
	TextData t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TextData

