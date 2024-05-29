BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS FewNumberEntity

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS FewNumberEntity
(
	Id     Int32,
	UserId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS LargeNumberEntity

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS LargeNumberEntity
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SomeTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SomeTable
(
	LargeNumberEntityId Int32,
	Value               Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SomeTable

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS LargeNumberEntity

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS FewNumberEntity

