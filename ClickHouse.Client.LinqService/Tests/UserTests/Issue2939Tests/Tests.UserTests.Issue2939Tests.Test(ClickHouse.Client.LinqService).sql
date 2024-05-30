BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Adsl

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Adsl
(
	Id       Int32,
	IdClient Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Client

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Client
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	serv.Id
FROM
	Adsl serv
		INNER JOIN Client client_1 ON serv.IdClient = client_1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Client

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Adsl

