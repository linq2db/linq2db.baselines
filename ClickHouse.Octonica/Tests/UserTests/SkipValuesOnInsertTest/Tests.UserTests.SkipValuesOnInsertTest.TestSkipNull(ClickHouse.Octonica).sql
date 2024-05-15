BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Null_Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS PR_1598_Insert_Null_Table
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

INSERT INTO PR_1598_Insert_Null_Table
(
	Id,
	Name
)
VALUES
(
	1,
	'Tommy'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Null_Table

