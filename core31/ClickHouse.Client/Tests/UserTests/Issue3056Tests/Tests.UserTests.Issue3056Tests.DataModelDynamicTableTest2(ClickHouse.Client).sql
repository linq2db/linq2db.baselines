BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Table_3056

BeforeExecute
-- ClickHouse.Client ClickHouse

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
INSERT ASYNC BULK Table_3056(Name, Description)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Table_3056

