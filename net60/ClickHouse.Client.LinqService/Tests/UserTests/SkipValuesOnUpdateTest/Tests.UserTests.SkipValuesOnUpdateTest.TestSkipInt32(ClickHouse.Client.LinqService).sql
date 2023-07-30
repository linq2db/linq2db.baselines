BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PR_1598_Update_Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS PR_1598_Update_Table
(
	Id   Int32,
	Name Nullable(String),
	Age  Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PR_1598_Update_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	toInt32(1),
	'Smith',
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	PR_1598_Update_Table
UPDATE
	Name = 'Franki',
	Age = toInt32(15)
WHERE
	Id = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	PR_1598_Update_Table
UPDATE
	Name = 'Jack'
WHERE
	Id = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PR_1598_Update_Table

