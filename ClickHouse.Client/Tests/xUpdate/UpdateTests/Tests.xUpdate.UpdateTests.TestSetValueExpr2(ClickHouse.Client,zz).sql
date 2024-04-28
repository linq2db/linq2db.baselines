BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TextData

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TextData
(
	Id     Int32,
	Items1 Nullable(String),
	Items2 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO TextData
(
	Id,
	Items1,
	Items2
)
VALUES
(1,'T1','Z1'),
(2,'T2','Z2')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	TextData
UPDATE
	Items1 = concat(Items1, 'zz'),
	Items2 = concat(Items2, 'zz')
WHERE
	Id >= 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Items1,
	t1.Items2
FROM
	TextData t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TextData

