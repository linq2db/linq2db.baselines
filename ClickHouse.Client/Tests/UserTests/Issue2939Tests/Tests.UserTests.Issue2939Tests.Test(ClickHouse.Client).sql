﻿BeforeExecute
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
	adsl_1.Id
FROM
	Adsl adsl_1
		INNER JOIN Client client_1 ON adsl_1.IdClient = client_1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Client

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Adsl

