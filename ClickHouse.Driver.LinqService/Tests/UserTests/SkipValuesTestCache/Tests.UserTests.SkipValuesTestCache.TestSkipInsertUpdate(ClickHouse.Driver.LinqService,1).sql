BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO PR_1598_Insert_Table_Cache
(
	Id,
	Name
)
VALUES
(
	1,
	'John'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	PR_1598_Insert_Table_Cache
UPDATE
	Name = 'John'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1
LIMIT 1

