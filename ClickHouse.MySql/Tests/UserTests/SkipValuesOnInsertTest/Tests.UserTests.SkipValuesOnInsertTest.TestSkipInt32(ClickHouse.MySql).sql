﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name
)
VALUES
(
	1,
	'Smith'
)

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name
)
VALUES
(
	2,
	'Tommy'
)

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 2
LIMIT 1

