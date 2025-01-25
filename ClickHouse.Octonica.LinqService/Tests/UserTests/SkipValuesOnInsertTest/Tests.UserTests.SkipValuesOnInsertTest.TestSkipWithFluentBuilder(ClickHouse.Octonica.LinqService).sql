BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Fluent_Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS PR_1598_Insert_Fluent_Table
(
	Id   Int32,
	Name Nullable(String),
	Age  Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO PR_1598_Insert_Fluent_Table
(
	Id,
	Name
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Fluent_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Fluent_Table

