BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PR_1598_Insert_Table_Cache
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'John',
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

ALTER TABLE
	PR_1598_Insert_Table_Cache
UPDATE
	Name = 'John',
	Age = 2
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1
LIMIT 1

