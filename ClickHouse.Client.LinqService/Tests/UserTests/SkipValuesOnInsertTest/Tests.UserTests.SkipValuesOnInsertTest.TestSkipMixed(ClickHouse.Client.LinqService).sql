﻿BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO PR_1598_Mixed_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Jason',
	20
)

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	PR_1598_Mixed_Table
UPDATE
	Age = 20
WHERE
	Id = 1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO PR_1598_Mixed_Table
(
	Id,
	Age
)
VALUES
(
	2,
	25
)

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 2
LIMIT 1

BeforeExecute
--  ClickHouse.Client ClickHouse

ALTER TABLE
	PR_1598_Mixed_Table
UPDATE
	Name = 'Jessy',
	Age = 25
WHERE
	Id = 2

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 2
LIMIT 1

