BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	1,
	'14'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	2,
	'4'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.StringEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

