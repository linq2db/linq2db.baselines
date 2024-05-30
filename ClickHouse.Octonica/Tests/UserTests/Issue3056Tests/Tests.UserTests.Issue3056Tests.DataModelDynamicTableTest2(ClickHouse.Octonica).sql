BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table_3056

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
INSERT INTO Table_3056(Name, Description) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Table_3056

