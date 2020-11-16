BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [MainItem]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [MainItem2]
(
	[Id]         INTEGER      NOT NULL,
	[Value]      NVarChar(50)     NULL,
	[MainItemId] INTEGER          NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [SubItem1]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    NVarChar(50)     NULL,
	[ParentId] INTEGER          NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [SubItem1_Sub]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    NVarChar(50)     NULL,
	[ParentId] INTEGER          NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [SubItem2]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    NVarChar(50)     NULL,
	[ParentId] INTEGER          NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_SubItem1].[Key_1],
	[lw_SubItem1].[Id],
	[lw_SubItem1].[Value_1],
	[lw_SubItem1].[ParentId],
	[detail_1].[Id],
	[detail_1].[Value],
	[detail_1].[ParentId],
	[a_ParentSubItem].[Id],
	[a_ParentSubItem].[Value],
	[a_ParentSubItem].[ParentId]
FROM
	(
		SELECT DISTINCT
			[detail].[Id],
			[lw_MainItem].[Id] as [Key_1],
			[detail].[Value] as [Value_1],
			[detail].[ParentId]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
						INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
						INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
				WHERE
					[m_1].[Id] > 1
			) [lw_MainItem]
				INNER JOIN [SubItem1] [detail] ON [lw_MainItem].[Id] = [detail].[ParentId]
	) [lw_SubItem1]
		INNER JOIN [SubItem1_Sub] [detail_1] ON [lw_SubItem1].[Id] = [detail_1].[ParentId]
		LEFT JOIN [SubItem1] [a_ParentSubItem] ON [detail_1].[ParentId] = [a_ParentSubItem].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_MainItem].[Id],
	[detail].[Id],
	[detail].[Value],
	[detail].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
		WHERE
			[m_1].[Id] > 1
	) [lw_MainItem]
		INNER JOIN [SubItem1] [detail] ON [lw_MainItem].[Id] = [detail].[ParentId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_MainItem].[Id],
	[detail].[Id],
	[detail].[Value],
	[detail].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
		WHERE
			[m_1].[Id] > 1
	) [lw_MainItem]
		INNER JOIN [SubItem2] [detail] ON [lw_MainItem].[Id] = [detail].[ParentId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
		INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
		INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
WHERE
	[m_1].[Id] > 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_SubItem1].[Key_1],
	[lw_SubItem1].[Id],
	[lw_SubItem1].[Value_1],
	[lw_SubItem1].[ParentId],
	[e_1].[Id],
	[e_1].[Value],
	[e_1].[ParentId],
	[e_2].[Id],
	[e_2].[Value],
	[e_2].[ParentId]
FROM
	(
		SELECT DISTINCT
			[e].[Id],
			[lw_MainItem].[Id] as [Key_1],
			[e].[Value] as [Value_1],
			[e].[ParentId]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
						INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
						INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
				WHERE
					[m_1].[Id] > 1
			) [lw_MainItem]
				INNER JOIN [SubItem1] [e] ON [lw_MainItem].[Id] = [e].[ParentId] AND ([e].[Value] = [e].[Value] OR [e].[Value] IS NULL AND [e].[Value] IS NULL)
	) [lw_SubItem1]
		INNER JOIN [SubItem1_Sub] [e_1] ON [lw_SubItem1].[Id] = [e_1].[ParentId] AND ([e_1].[Value] = [e_1].[Value] OR [e_1].[Value] IS NULL AND [e_1].[Value] IS NULL)
		LEFT JOIN [SubItem1] [e_2] ON [e_1].[ParentId] = [e_2].[Id] AND ([e_2].[Value] = [e_2].[Value] OR [e_2].[Value] IS NULL AND [e_2].[Value] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_MainItem].[Id],
	[e].[Id],
	[e].[Value],
	[e].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
		WHERE
			[m_1].[Id] > 1
	) [lw_MainItem]
		INNER JOIN [SubItem1] [e] ON [lw_MainItem].[Id] = [e].[ParentId] AND ([e].[Value] = [e].[Value] OR [e].[Value] IS NULL AND [e].[Value] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_MainItem].[Id],
	[e].[Id],
	[e].[Value],
	[e].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
		WHERE
			[m_1].[Id] > 1
	) [lw_MainItem]
		INNER JOIN [SubItem2] [e] ON [lw_MainItem].[Id] = [e].[ParentId] AND ([e].[Value] = [e].[Value] OR [e].[Value] IS NULL AND [e].[Value] IS NULL)
		LEFT JOIN [MainItem] [a_Parent] ON [e].[ParentId] = [a_Parent].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
		INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
		INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
WHERE
	[m_1].[Id] > 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_SubItem1].[Key_1],
	[lw_SubItem1].[Id],
	[lw_SubItem1].[Value_1],
	[lw_SubItem1].[ParentId],
	[detail_1].[Id],
	[detail_1].[Value],
	[detail_1].[ParentId],
	[a_ParentSubItem].[Id],
	[a_ParentSubItem].[Value],
	[a_ParentSubItem].[ParentId]
FROM
	(
		SELECT DISTINCT
			[detail].[Id],
			[lw_MainItem].[Id] as [Key_1],
			[detail].[Value] as [Value_1],
			[detail].[ParentId]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
						INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
						INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
				WHERE
					[m_1].[Id] > 1
			) [lw_MainItem]
				INNER JOIN [SubItem1] [detail] ON [lw_MainItem].[Id] = [detail].[ParentId]
	) [lw_SubItem1]
		INNER JOIN [SubItem1_Sub] [detail_1] ON [lw_SubItem1].[Id] = [detail_1].[ParentId]
		LEFT JOIN [SubItem1] [a_ParentSubItem] ON [detail_1].[ParentId] = [a_ParentSubItem].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_MainItem].[Id],
	[detail].[Id],
	[detail].[Value],
	[detail].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
		WHERE
			[m_1].[Id] > 1
	) [lw_MainItem]
		INNER JOIN [SubItem1] [detail] ON [lw_MainItem].[Id] = [detail].[ParentId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[lw_MainItem].[Id],
	[detail].[Id],
	[detail].[Value],
	[detail].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
				INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
				INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
		WHERE
			[m_1].[Id] > 1
	) [lw_MainItem]
		INNER JOIN [SubItem2] [detail] ON [lw_MainItem].[Id] = [detail].[ParentId]
		LEFT JOIN [MainItem] [a_Parent] ON [detail].[ParentId] = [a_Parent].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
		INNER JOIN [MainItem2] [m2] ON [m2].[Id] = [m_1].[Id]
		INNER JOIN [MainItem2] [mm] ON [mm].[Id] = [m2].[Id]
WHERE
	[m_1].[Id] > 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [SubItem2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [SubItem1_Sub]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [SubItem1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [MainItem2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [MainItem]

