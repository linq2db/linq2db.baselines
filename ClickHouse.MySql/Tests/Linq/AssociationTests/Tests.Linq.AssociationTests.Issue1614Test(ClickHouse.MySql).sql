BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS User
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Resource

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Resource
(
	Id                 Int32,
	AssociatedObjectId Int32,
	AssociationTypeId  Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Lookup

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Lookup
(
	Id   Int32,
	Type Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.AssociatedObjectId,
	t1.AssociationTypeId,
	a_User.Id
FROM
	Resource t1
		LEFT JOIN Lookup a_AssociationTypeCode ON t1.AssociationTypeId = a_AssociationTypeCode.Id
		LEFT JOIN User a_User ON a_AssociationTypeCode.Type = 'us' AND a_User.Id = t1.AssociatedObjectId

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Lookup

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Resource

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User

