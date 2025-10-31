-- ClickHouse.Octonica ClickHouse

INSERT INTO MultipleRowsTable
(
	Id,
	DecimalValue1,
	DecimalValue2
)
VALUES
(1,NULL,toDecimal128('1', 10)),
(2,toDecimal128('1.5', 10),toDecimal128('-2.6', 10))

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.DecimalValue1,
	t1.DecimalValue2
FROM
	MultipleRowsTable t1
ORDER BY
	t1.Id

