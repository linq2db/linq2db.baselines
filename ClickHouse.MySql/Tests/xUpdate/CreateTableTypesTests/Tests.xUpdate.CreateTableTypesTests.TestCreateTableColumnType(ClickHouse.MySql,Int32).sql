﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int32
)
VALUES
(
	1,
	0
)

BeforeExecute
--  ClickHouse.MySql ClickHouse

INSERT INTO CreateTableTypes
(
	Id,
	Int32
)
VALUES
(
	2,
	1
)

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Int32
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

