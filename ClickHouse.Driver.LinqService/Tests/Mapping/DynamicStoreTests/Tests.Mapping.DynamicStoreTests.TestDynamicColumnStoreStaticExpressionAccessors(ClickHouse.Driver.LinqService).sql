BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Name
FROM
	DynamicColumnsTestTable t1

