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
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID IN (4, 5, 6)
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1316Tests

