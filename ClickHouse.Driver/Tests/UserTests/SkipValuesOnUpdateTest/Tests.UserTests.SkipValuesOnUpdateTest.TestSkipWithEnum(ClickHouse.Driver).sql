-- ClickHouse.Driver ClickHouse

INSERT INTO PR_1598_Update_Enum_Table
(
	Id,
	Name,
	Age,
	Gender
)
VALUES
(
	1,
	'Max',
	20,
	'Female'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	PR_1598_Update_Enum_Table
UPDATE
	Name = 'Jack',
	Age = 2,
	Gender = 'Male'
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	PR_1598_Update_Enum_Table
UPDATE
	Name = 'Francine',
	Age = 20
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

