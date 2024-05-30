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
(1)

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
(11,1,true),
(12,1,false),
(13,1,true)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			ParentRecord t1
	) m_1
		INNER JOIN ChildRecord d ON m_1.Id = d.ParentId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			ParentRecord t1
	) m_1
		INNER JOIN ChildRecord d ON m_1.Id = d.ParentId
WHERE
	d.IsActive = true

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

