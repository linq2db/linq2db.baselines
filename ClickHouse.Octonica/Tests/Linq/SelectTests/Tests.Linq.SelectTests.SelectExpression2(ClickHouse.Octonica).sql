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
	CASE
		WHEN 1 = 1 THEN true
		ELSE false
	END
FROM
	SelectExpressionTable t1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SelectExpressionTable

