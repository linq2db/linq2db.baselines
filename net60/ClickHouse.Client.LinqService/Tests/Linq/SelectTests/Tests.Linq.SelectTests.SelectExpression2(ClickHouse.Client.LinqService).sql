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
	toUUID('b3d9b51c-89f9-442a-893b-cd8a6f667d37'),
	toUUID('61efdcd4-659d-41e8-910c-506a9c2f31c5')
FROM
	SelectExpressionTable _
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

