﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Users

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Users
(
	Id      Int32,
	Version Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Users
(
	Id,
	Version
)
VALUES
(toInt32(1),toInt32(0))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	u.Id
FROM
	Users u
WHERE
	u.Version < toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Users

