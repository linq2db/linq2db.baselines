﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Fluent_Table

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO PR_1598_Insert_Fluent_Table
(
	Id,
	Name
)
VALUES
(
	toInt32(1),
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Fluent_Table t
WHERE
	t.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Fluent_Table

