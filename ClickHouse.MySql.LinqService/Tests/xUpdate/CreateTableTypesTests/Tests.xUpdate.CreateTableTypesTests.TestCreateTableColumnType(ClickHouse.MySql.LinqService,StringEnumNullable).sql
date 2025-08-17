BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	2,
	'40'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.StringEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

