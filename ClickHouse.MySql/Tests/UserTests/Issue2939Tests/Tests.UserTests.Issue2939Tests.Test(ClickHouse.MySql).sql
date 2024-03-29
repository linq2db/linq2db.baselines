﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Adsl

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Adsl
(
	Id       Int32,
	IdClient Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Client

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Client
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	adsl_1.Id
FROM
	Adsl adsl_1
		INNER JOIN Client client_1 ON adsl_1.IdClient = client_1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Client

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Adsl

