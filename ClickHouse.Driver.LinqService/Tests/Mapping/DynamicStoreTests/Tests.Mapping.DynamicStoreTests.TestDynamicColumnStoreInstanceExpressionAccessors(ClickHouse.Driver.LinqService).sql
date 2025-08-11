BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO DynamicColumnsTestTable
(
	Id,
	Name
)
VALUES
(
	5,
	'test_name'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	DynamicColumnsTestTable t1

