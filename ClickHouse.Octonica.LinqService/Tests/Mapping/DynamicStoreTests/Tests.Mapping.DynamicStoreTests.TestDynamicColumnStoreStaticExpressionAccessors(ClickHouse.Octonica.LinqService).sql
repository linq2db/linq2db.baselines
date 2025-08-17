BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Name
FROM
	DynamicColumnsTestTable t1

