-- ClickHouse.Octonica ClickHouse

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Smith',
	55
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	2,
	'Tommy',
	50
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 2
LIMIT 1

