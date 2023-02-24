BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ParentRecord

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ParentRecord
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ParentRecord
(
	Id
)
VALUES
(toInt32(1))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ChildRecord

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ChildRecord
(
	Id       Int32,
	ParentId Int32,
	IsActive Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ChildRecord
(
	Id,
	ParentId,
	IsActive
)
VALUES
(toInt32(11),toInt32(1),true),
(toInt32(12),toInt32(1),false),
(toInt32(13),toInt32(1),true)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_ParentRecord.Id,
	detail.Id,
	detail.ParentId,
	detail.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			ParentRecord t1
	) lw_ParentRecord
		INNER JOIN ChildRecord detail ON lw_ParentRecord.Id = detail.ParentId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_ParentRecord.Id,
	detail.Id,
	detail.ParentId,
	detail.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			ParentRecord t1
	) lw_ParentRecord
		INNER JOIN ChildRecord detail ON lw_ParentRecord.Id = detail.ParentId AND detail.IsActive = true

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id
FROM
	ParentRecord t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ChildRecord

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ParentRecord

