BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Enum_Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PR_1598_Insert_Enum_Table
(
	Id     Int32,
	Name   Nullable(String),
	Age    Nullable(Int32),
	Gender Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Enum_Table

