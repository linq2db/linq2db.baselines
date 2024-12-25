BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SelectExpressionTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SelectExpressionTable
(
	ID
)
VALUES
(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	1 = 1
FROM
	SelectExpressionTable t1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

