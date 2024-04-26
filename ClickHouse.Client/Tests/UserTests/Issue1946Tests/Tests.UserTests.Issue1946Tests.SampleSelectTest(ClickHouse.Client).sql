BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Users

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Users
(
	Id      Int32,
	Version Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Users
(
	Id,
	Version
)
VALUES
(1,0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	u.Id
FROM
	Users u
WHERE
	u.Version < 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Users

