-- ClickHouse.Driver ClickHouse

INSERT INTO PR_1598_SkipCustom_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'John',
	15
)

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Driver ClickHouse

INSERT INTO PR_1598_SkipCustom_Table
(
	Id,
	Name
)
VALUES
(
	2,
	'Max'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 2
LIMIT 1

