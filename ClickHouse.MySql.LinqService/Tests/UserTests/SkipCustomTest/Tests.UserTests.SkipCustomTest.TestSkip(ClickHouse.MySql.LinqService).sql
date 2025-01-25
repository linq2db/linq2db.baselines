BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PR_1598_SkipCustom_Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PR_1598_SkipCustom_Table
(
	Id   Int32,
	Name Nullable(String),
	Age  Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 2
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PR_1598_SkipCustom_Table

