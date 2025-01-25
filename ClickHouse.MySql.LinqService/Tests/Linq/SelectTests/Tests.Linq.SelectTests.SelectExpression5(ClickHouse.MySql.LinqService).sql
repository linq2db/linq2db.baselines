BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SelectExpressionTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SelectExpressionTable
(
	ID
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	1
FROM
	SelectExpressionTable t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

