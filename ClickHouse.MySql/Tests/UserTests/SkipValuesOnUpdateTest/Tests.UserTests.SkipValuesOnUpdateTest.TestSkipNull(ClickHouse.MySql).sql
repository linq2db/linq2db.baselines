BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PR_1598_Update_Null_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Tommy',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	PR_1598_Update_Null_Table
UPDATE
	Name = 'Jack',
	Age = 2
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	PR_1598_Update_Null_Table
UPDATE
	Name = 'Franki'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

