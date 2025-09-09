BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO PR_1598_Update_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Manuel',
	14
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	PR_1598_Update_Table
UPDATE
	Name = 'Jacob',
	Age = 15
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	PR_1598_Update_Table
UPDATE
	Age = 22
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

