BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainItem]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MainItem]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [MainItem]
(
	[Id],
	[Value]
)
VALUES
(0,'Main_0'),
(1,'Main_1'),
(2,'Main_2'),
(3,'Main_3'),
(4,'Main_4'),
(5,'Main_5'),
(6,'Main_6'),
(7,'Main_7'),
(8,'Main_8'),
(9,'Main_9')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainItem2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MainItem2]
(
	[Id]         INTEGER      NOT NULL,
	[Value]      NVarChar(50)     NULL,
	[MainItemId] INTEGER          NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [MainItem2]
(
	[Id],
	[Value],
	[MainItemId]
)
VALUES
(0,'Main2_0',0),
(2,'Main2_1',1),
(4,'Main2_2',2),
(6,'Main2_3',3),
(8,'Main2_4',4)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubItem1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubItem1]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    NVarChar(50)     NULL,
	[ParentId] INTEGER          NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SubItem1]
(
	[Id],
	[Value],
	[ParentId]
)
VALUES
(0,'Sub1_0',0),
(10,'Sub1_1',NULL),
(20,'Sub1_2',1),
(30,'Sub1_3',NULL),
(40,'Sub1_4',2),
(50,'Sub1_5',NULL),
(60,'Sub1_6',3),
(70,'Sub1_7',NULL),
(80,'Sub1_8',4),
(90,'Sub1_9',NULL),
(100,'Sub1_10',5),
(110,'Sub1_11',NULL),
(120,'Sub1_12',6),
(130,'Sub1_13',NULL),
(140,'Sub1_14',7),
(150,'Sub1_15',NULL),
(160,'Sub1_16',8),
(170,'Sub1_17',NULL),
(180,'Sub1_18',9),
(190,'Sub1_19',NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubItem1_Sub]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubItem1_Sub]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    NVarChar(50)     NULL,
	[ParentId] INTEGER          NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SubItem1_Sub]
(
	[Id],
	[Value],
	[ParentId]
)
VALUES
(0,'SubSub1_0',0),
(100,'SubSub1_1',3),
(200,'SubSub1_2',6),
(300,'SubSub1_3',10),
(400,'SubSub1_4',13),
(500,'SubSub1_5',16),
(600,'SubSub1_6',20),
(700,'SubSub1_7',23),
(800,'SubSub1_8',26),
(900,'SubSub1_9',30),
(1000,'SubSub1_10',33),
(1100,'SubSub1_11',36),
(1200,'SubSub1_12',40),
(1300,'SubSub1_13',43),
(1400,'SubSub1_14',46),
(1500,'SubSub1_15',50),
(1600,'SubSub1_16',53),
(1700,'SubSub1_17',56),
(1800,'SubSub1_18',60),
(1900,'SubSub1_19',63)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubItem2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubItem2]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    NVarChar(50)     NULL,
	[ParentId] INTEGER          NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SubItem2]
(
	[Id],
	[Value],
	[ParentId]
)
VALUES
(0,'Sub2_0',0),
(10,'Sub2_1',NULL),
(20,'Sub2_2',1),
(30,'Sub2_3',NULL),
(40,'Sub2_4',2),
(50,'Sub2_5',NULL),
(60,'Sub2_6',3),
(70,'Sub2_7',NULL),
(80,'Sub2_8',4),
(90,'Sub2_9',NULL),
(100,'Sub2_10',5),
(110,'Sub2_11',NULL),
(120,'Sub2_12',6),
(130,'Sub2_13',NULL),
(140,'Sub2_14',7),
(150,'Sub2_15',NULL),
(160,'Sub2_16',8),
(170,'Sub2_17',NULL),
(180,'Sub2_18',9),
(190,'Sub2_19',NULL)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value_1],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN (
			SELECT
				[d].[Id],
				[d].[Value] as [Value_1],
				[d].[ParentId],
				ROW_NUMBER() OVER (PARTITION BY [d].[ParentId] ORDER BY [d].[Id]) as [rn]
			FROM
				[SubItem1] [d]
			WHERE
				[d].[ParentId] % 2 = 0
		) [d_1] ON [m_2].[Id] = [d_1].[ParentId] AND [d_1].[rn] <= 2

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value_1],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN (
			SELECT
				[d].[Id],
				[d].[Value] as [Value_1],
				[d].[ParentId],
				ROW_NUMBER() OVER (PARTITION BY [d].[ParentId] ORDER BY [d].[Id]) as [rn]
			FROM
				[SubItem1] [d]
			WHERE
				[d].[ParentId] % 2 = 0
		) [d_1] ON [m_2].[Id] = [d_1].[ParentId] AND [d_1].[rn] <= 2

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[cond],
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [cond],
			[t1].[Id]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
				LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_2]
		INNER JOIN [SubItem2] [d_1] ON [m_2].[cond] = [d_1].[ParentId] OR [m_2].[cond] IS NULL AND [d_1].[ParentId] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
		LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[cond],
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [cond],
			[t1].[Id]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
				LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_2]
		INNER JOIN [SubItem2] [d_1] ON [m_2].[cond] = [d_1].[ParentId] OR [m_2].[cond] IS NULL AND [d_1].[ParentId] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
		LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
WHERE
	[d].[ParentId] % 2 = 0 AND [d].[Value] LIKE 'Sub1~_%' ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubItem2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubItem1_Sub]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubItem1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainItem2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainItem]

