﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Table_Cache

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS PR_1598_Insert_Table_Cache
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

INSERT INTO PR_1598_Insert_Table_Cache
(
	Id,
	Name,
	Age
)
VALUES
(
	toInt32(1),
	'John',
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	PR_1598_Insert_Table_Cache
UPDATE
	Name = 'John',
	Age = toInt32(2)
WHERE
	Id = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PR_1598_Insert_Table_Cache

