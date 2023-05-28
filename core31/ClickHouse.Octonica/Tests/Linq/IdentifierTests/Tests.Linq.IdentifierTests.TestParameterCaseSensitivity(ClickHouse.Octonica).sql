BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	col2    Int32,
	col3    Int32,
	Column1 Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO testparams
(
	col2,
	col3,
	Column1
)
VALUES
(
	toInt32(0),
	toInt32(0),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testparams
UPDATE
	col2 = toInt32(2),
	col3 = toInt32(3)
WHERE
	Column1 = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.col2,
	t1.col3,
	t1.Column1
FROM
	testparams t1
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	testparams
UPDATE
	col3 = toInt32(2),
	col2 = toInt32(3)
WHERE
	Column1 = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.col2,
	t1.col3,
	t1.Column1
FROM
	testparams t1
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS testparams

