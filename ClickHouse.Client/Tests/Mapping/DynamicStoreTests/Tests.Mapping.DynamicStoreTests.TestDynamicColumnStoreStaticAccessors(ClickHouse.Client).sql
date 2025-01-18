BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	DynamicColumnsTestTable t1

