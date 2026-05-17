-- ClickHouse.MySql ClickHouse

INSERT INTO PR_1598_Update_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Smith',
	2
)

-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	PR_1598_Update_Table
UPDATE
	Name = 'Franki',
	Age = 15
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	PR_1598_Update_Table
UPDATE
	Name = 'Jack'
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

