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
	toInt32(5)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ID
FROM
	Issue1316Tests _
WHERE
	_.ID IN (toInt32(4), toInt32(5), toInt32(6))
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1316Tests

