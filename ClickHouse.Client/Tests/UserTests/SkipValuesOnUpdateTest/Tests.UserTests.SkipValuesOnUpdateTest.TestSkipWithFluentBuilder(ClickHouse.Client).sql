﻿BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO PR_1598_Update_Fluent_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	NULL,
	2
)

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Fluent_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	PR_1598_Update_Fluent_Table
UPDATE
	Name = 'Franki',
	Age = 18
WHERE
	Id = 1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Fluent_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	PR_1598_Update_Fluent_Table
UPDATE
	Name = 'Jack'
WHERE
	Id = 1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Fluent_Table t
WHERE
	t.Id = 1
LIMIT 1

