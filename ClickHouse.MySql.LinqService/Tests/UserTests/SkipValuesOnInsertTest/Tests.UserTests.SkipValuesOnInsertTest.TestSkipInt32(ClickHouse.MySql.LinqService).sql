﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PR_1598_Insert_Table
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

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name
)
VALUES
(
	toInt32(1),
	'Smith'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name
)
VALUES
(
	toInt32(2),
	'Tommy'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = toInt32(2)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Table

