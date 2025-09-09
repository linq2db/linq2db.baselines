BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	PR_1598_Update_Null_Table
UPDATE
	Name = 'Jack',
	Age = 2
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	PR_1598_Update_Null_Table
UPDATE
	Name = 'Franki'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

