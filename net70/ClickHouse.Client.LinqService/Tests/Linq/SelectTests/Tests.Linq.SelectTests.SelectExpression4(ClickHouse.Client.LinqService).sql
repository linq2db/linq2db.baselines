BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SelectExpressionTable
(
	ID Int32,

	 PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SelectExpressionTable
(
	ID
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toInt32(1)
FROM
	SelectExpressionTable _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

