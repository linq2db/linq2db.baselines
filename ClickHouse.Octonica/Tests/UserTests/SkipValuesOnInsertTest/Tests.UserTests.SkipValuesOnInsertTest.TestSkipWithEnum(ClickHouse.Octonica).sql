-- ClickHouse.Octonica ClickHouse

INSERT INTO PR_1598_Insert_Enum_Table
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
	'Male'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

INSERT INTO PR_1598_Insert_Enum_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	2,
	'Jenny',
	25
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 2
LIMIT 1

