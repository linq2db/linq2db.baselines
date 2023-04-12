BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1316Tests

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue1316Tests
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	toInt32(5)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ID
FROM
	Issue1316Tests _
WHERE
	_.ID = toInt32(5)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1316Tests

