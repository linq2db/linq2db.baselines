BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table_3056

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Table_3056
(
	Id          Int32,
	Name        Nullable(String),
	Description Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Table_3056
(
	Name,
	Description
)
VALUES
('n1','d0'),
('n2','d00')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table_3056

