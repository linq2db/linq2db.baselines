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
	CASE
		WHEN 1 = 1 THEN true
		ELSE false
	END
FROM
	SelectExpressionTable _
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

