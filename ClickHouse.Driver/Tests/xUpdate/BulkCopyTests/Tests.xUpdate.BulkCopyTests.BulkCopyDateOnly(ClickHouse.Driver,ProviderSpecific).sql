BeforeExecute
INSERT ASYNC BULK DateOnlyTable(Date)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Date
FROM
	DateOnlyTable t1
LIMIT 2

