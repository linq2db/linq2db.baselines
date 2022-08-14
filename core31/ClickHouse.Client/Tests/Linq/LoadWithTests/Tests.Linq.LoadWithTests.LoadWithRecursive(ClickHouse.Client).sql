BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MainItem

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MainItem
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO MainItem
(
	Id,
	Value
)
VALUES
(toInt32(0),'Main_0'),
(toInt32(1),'Main_1'),
(toInt32(2),'Main_2'),
(toInt32(3),'Main_3'),
(toInt32(4),'Main_4'),
(toInt32(5),'Main_5'),
(toInt32(6),'Main_6'),
(toInt32(7),'Main_7'),
(toInt32(8),'Main_8'),
(toInt32(9),'Main_9')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MainItem2

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MainItem2
(
	Id         Int32,
	Value      Nullable(String),
	MainItemId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO MainItem2
(
	Id,
	Value,
	MainItemId
)
VALUES
(toInt32(0),'Main2_0',toInt32(0)),
(toInt32(2),'Main2_1',toInt32(1)),
(toInt32(4),'Main2_2',toInt32(2)),
(toInt32(6),'Main2_3',toInt32(3)),
(toInt32(8),'Main2_4',toInt32(4))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SubItem1

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SubItem1
(
	Id       Int32,
	Value    Nullable(String),
	ParentId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SubItem1
(
	Id,
	Value,
	ParentId
)
VALUES
(toInt32(0),'Sub1_0',toInt32(0)),
(toInt32(10),'Sub1_1',NULL),
(toInt32(20),'Sub1_2',toInt32(1)),
(toInt32(30),'Sub1_3',NULL),
(toInt32(40),'Sub1_4',toInt32(2)),
(toInt32(50),'Sub1_5',NULL),
(toInt32(60),'Sub1_6',toInt32(3)),
(toInt32(70),'Sub1_7',NULL),
(toInt32(80),'Sub1_8',toInt32(4)),
(toInt32(90),'Sub1_9',NULL),
(toInt32(100),'Sub1_10',toInt32(5)),
(toInt32(110),'Sub1_11',NULL),
(toInt32(120),'Sub1_12',toInt32(6)),
(toInt32(130),'Sub1_13',NULL),
(toInt32(140),'Sub1_14',toInt32(7)),
(toInt32(150),'Sub1_15',NULL),
(toInt32(160),'Sub1_16',toInt32(8)),
(toInt32(170),'Sub1_17',NULL),
(toInt32(180),'Sub1_18',toInt32(9)),
(toInt32(190),'Sub1_19',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SubItem1_Sub

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SubItem1_Sub
(
	Id       Int32,
	Value    Nullable(String),
	ParentId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SubItem1_Sub
(
	Id,
	Value,
	ParentId
)
VALUES
(toInt32(0),'SubSub1_0',toInt32(0)),
(toInt32(100),'SubSub1_1',toInt32(3)),
(toInt32(200),'SubSub1_2',toInt32(6)),
(toInt32(300),'SubSub1_3',toInt32(10)),
(toInt32(400),'SubSub1_4',toInt32(13)),
(toInt32(500),'SubSub1_5',toInt32(16)),
(toInt32(600),'SubSub1_6',toInt32(20)),
(toInt32(700),'SubSub1_7',toInt32(23)),
(toInt32(800),'SubSub1_8',toInt32(26)),
(toInt32(900),'SubSub1_9',toInt32(30)),
(toInt32(1000),'SubSub1_10',toInt32(33)),
(toInt32(1100),'SubSub1_11',toInt32(36)),
(toInt32(1200),'SubSub1_12',toInt32(40)),
(toInt32(1300),'SubSub1_13',toInt32(43)),
(toInt32(1400),'SubSub1_14',toInt32(46)),
(toInt32(1500),'SubSub1_15',toInt32(50)),
(toInt32(1600),'SubSub1_16',toInt32(53)),
(toInt32(1700),'SubSub1_17',toInt32(56)),
(toInt32(1800),'SubSub1_18',toInt32(60)),
(toInt32(1900),'SubSub1_19',toInt32(63))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SubItem2

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SubItem2
(
	Id       Int32,
	Value    Nullable(String),
	ParentId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SubItem2
(
	Id,
	Value,
	ParentId
)
VALUES
(toInt32(0),'Sub2_0',toInt32(0)),
(toInt32(10),'Sub2_1',NULL),
(toInt32(20),'Sub2_2',toInt32(1)),
(toInt32(30),'Sub2_3',NULL),
(toInt32(40),'Sub2_4',toInt32(2)),
(toInt32(50),'Sub2_5',NULL),
(toInt32(60),'Sub2_6',toInt32(3)),
(toInt32(70),'Sub2_7',NULL),
(toInt32(80),'Sub2_8',toInt32(4)),
(toInt32(90),'Sub2_9',NULL),
(toInt32(100),'Sub2_10',toInt32(5)),
(toInt32(110),'Sub2_11',NULL),
(toInt32(120),'Sub2_12',toInt32(6)),
(toInt32(130),'Sub2_13',NULL),
(toInt32(140),'Sub2_14',toInt32(7)),
(toInt32(150),'Sub2_15',NULL),
(toInt32(160),'Sub2_16',toInt32(8)),
(toInt32(170),'Sub2_17',NULL),
(toInt32(180),'Sub2_18',toInt32(9)),
(toInt32(190),'Sub2_19',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_SubItem1.Id_1,
	lw_SubItem1.Id,
	lw_SubItem1.Value_1,
	lw_SubItem1.ParentId,
	detail_1.Id,
	detail_1.Value,
	detail_1.ParentId,
	a_ParentSubItem.Id,
	a_ParentSubItem.Value,
	a_ParentSubItem.ParentId
FROM
	(
		SELECT DISTINCT
			detail.Id as Id,
			lw_MainItem.Id as Id_1,
			detail.Value as Value_1,
			detail.ParentId as ParentId
		FROM
			(
				SELECT DISTINCT
					m_1.Id as Id
				FROM
					MainItem m_1
						INNER JOIN MainItem2 mm ON mm.Id = m_1.Id
				WHERE
					m_1.Id > toInt32(1)
			) lw_MainItem
				INNER JOIN SubItem1 detail ON lw_MainItem.Id = detail.ParentId
	) lw_SubItem1
		INNER JOIN SubItem1_Sub detail_1 ON lw_SubItem1.Id = detail_1.ParentId
		LEFT JOIN SubItem1 a_ParentSubItem ON detail_1.ParentId = a_ParentSubItem.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_MainItem.Id,
	detail.Id,
	detail.Value,
	detail.ParentId
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
				INNER JOIN MainItem2 mm ON mm.Id = m_1.Id
		WHERE
			m_1.Id > toInt32(1)
	) lw_MainItem
		INNER JOIN SubItem1 detail ON lw_MainItem.Id = detail.ParentId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_MainItem.Id,
	detail.Id,
	detail.Value,
	detail.ParentId
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
				INNER JOIN MainItem2 mm ON mm.Id = m_1.Id
		WHERE
			m_1.Id > toInt32(1)
	) lw_MainItem
		INNER JOIN SubItem2 detail ON lw_MainItem.Id = detail.ParentId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	MainItem m_1
		INNER JOIN MainItem2 mm ON mm.Id = m_1.Id
WHERE
	m_1.Id > toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_SubItem1.Id_1,
	lw_SubItem1.Id,
	lw_SubItem1.Value_1,
	lw_SubItem1.ParentId,
	detail_1.Id,
	detail_1.Value,
	detail_1.ParentId,
	a_ParentSubItem.Id,
	a_ParentSubItem.Value,
	a_ParentSubItem.ParentId
FROM
	(
		SELECT DISTINCT
			detail.Id as Id,
			lw_MainItem.Id as Id_1,
			detail.Value as Value_1,
			detail.ParentId as ParentId
		FROM
			(
				SELECT DISTINCT
					m_1.Id as Id
				FROM
					MainItem m_1
						INNER JOIN MainItem2 mm ON mm.Id = m_1.Id
				WHERE
					m_1.Id > toInt32(1)
			) lw_MainItem
				INNER JOIN SubItem1 detail ON lw_MainItem.Id = detail.ParentId
	) lw_SubItem1
		INNER JOIN SubItem1_Sub detail_1 ON lw_SubItem1.Id = detail_1.ParentId
		LEFT JOIN SubItem1 a_ParentSubItem ON detail_1.ParentId = a_ParentSubItem.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_MainItem.Id,
	detail.Id,
	detail.Value,
	detail.ParentId
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
				INNER JOIN MainItem2 mm ON mm.Id = m_1.Id
		WHERE
			m_1.Id > toInt32(1)
	) lw_MainItem
		INNER JOIN SubItem1 detail ON lw_MainItem.Id = detail.ParentId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	MainItem m_1
		INNER JOIN MainItem2 mm ON mm.Id = m_1.Id
WHERE
	m_1.Id > toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SubItem2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SubItem1_Sub

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SubItem1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MainItem2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MainItem

