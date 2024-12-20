﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4454Client

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4454Client
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4454Service

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4454Service
(
	Id       Int32,
	IdClient Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_Client1.Name
FROM
	Issue4454Service s
		INNER JOIN Issue4454Client a_Client1 ON s.IdClient = a_Client1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4454Service

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4454Client

