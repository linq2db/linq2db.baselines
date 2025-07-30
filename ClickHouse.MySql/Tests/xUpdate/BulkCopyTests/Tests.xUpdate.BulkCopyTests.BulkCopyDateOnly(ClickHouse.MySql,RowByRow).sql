BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DateOnlyTable
(
	Date
)
VALUES
(
	toDate32('2021-01-01')
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Date
FROM
	DateOnlyTable t1
LIMIT 2

