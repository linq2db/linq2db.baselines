BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1316Tests

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue1316Tests
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	5
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ID
FROM
	Issue1316Tests _
WHERE
	_.ID = 5
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ID
FROM
	Issue1316Tests _
WHERE
	_.ID = 5
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1316Tests

