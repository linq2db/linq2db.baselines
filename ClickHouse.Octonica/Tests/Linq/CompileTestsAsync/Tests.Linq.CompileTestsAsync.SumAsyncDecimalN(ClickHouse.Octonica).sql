BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AsyncDataTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS AsyncDataTable
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	sumOrNull(toDecimal128(c_1.Id, 10))
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id < 5

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AsyncDataTable

