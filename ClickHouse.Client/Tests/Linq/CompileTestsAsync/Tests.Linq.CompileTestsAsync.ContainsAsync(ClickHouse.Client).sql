BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AsyncDataTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS AsyncDataTable
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	CASE
		WHEN 2 IN (
			SELECT
				c_1.Id
			FROM
				AsyncDataTable c_1
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AsyncDataTable

