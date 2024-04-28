BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DateOnlyTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DateOnlyTable
(
	Date Date32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DateOnlyTable
(
	Date
)
VALUES
(
	toDate32('2021-01-01')
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Date
FROM
	DateOnlyTable t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DateOnlyTable

