-- YDB Ydb

INSERT INTO MultipleRowsTable
(
	Id,
	DecimalValue1,
	DecimalValue2
)
VALUES
(1,NULL,Decimal('1', 22, 9)),
(2,Decimal('1.5', 22, 9),Decimal('-2.6', 22, 9))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.DecimalValue1 as DecimalValue1,
	t1.DecimalValue2 as DecimalValue2
FROM
	MultipleRowsTable t1
ORDER BY
	t1.Id

