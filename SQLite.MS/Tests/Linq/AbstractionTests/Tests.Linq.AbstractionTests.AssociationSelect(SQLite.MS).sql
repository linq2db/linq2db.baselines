BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass1]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SampleClass1]
(
	[Id],
	[Value]
)
VALUES
(1,1000),
(2,2000),
(3,3000),
(4,4000),
(5,5000),
(6,6000),
(7,7000),
(8,8000),
(9,9000),
(10,10000)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass2]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SampleClass2]
(
	[Id],
	[Value]
)
VALUES
(1,1000),
(2,2000),
(3,3000),
(4,4000),
(5,5000),
(6,6000),
(7,7000),
(8,8000),
(9,9000),
(10,10000)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChildEntitity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ChildEntitity]
(
	[Id]       INTEGER NOT NULL,
	[ParentId] INTEGER     NULL,
	[SubId]    INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ChildEntitity]
(
	[Id],
	[ParentId],
	[SubId]
)
VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,7),
(8,1,8),
(9,1,9),
(10,1,10),
(11,2,11),
(12,2,12),
(13,2,13),
(14,2,14),
(15,2,15),
(16,2,16),
(17,2,17),
(18,2,18),
(19,2,19),
(20,2,20),
(21,3,21),
(22,3,22),
(23,3,23),
(24,3,24),
(25,3,25),
(26,3,26),
(27,3,27),
(28,3,28),
(29,3,29),
(30,3,30),
(31,4,31),
(32,4,32),
(33,4,33),
(34,4,34),
(35,4,35),
(36,4,36),
(37,4,37),
(38,4,38),
(39,4,39),
(40,4,40),
(41,5,41),
(42,5,42),
(43,5,43),
(44,5,44),
(45,5,45),
(46,5,46),
(47,5,47),
(48,5,48),
(49,5,49),
(50,5,50),
(51,6,51),
(52,6,52),
(53,6,53),
(54,6,54),
(55,6,55),
(56,6,56),
(57,6,57),
(58,6,58),
(59,6,59),
(60,6,60),
(61,7,61),
(62,7,62),
(63,7,63),
(64,7,64),
(65,7,65),
(66,7,66),
(67,7,67),
(68,7,68),
(69,7,69),
(70,7,70),
(71,8,71),
(72,8,72),
(73,8,73),
(74,8,74),
(75,8,75),
(76,8,76),
(77,8,77),
(78,8,78),
(79,8,79),
(80,8,80),
(81,9,81),
(82,9,82),
(83,9,83),
(84,9,84),
(85,9,85),
(86,9,86),
(87,9,87),
(88,9,88),
(89,9,89),
(90,9,90),
(91,10,91),
(92,10,92),
(93,10,93),
(94,10,94),
(95,10,95),
(96,10,96),
(97,10,97),
(98,10,98),
(99,10,99),
(100,10,100)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubEntitity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubEntitity]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SubEntitity]
(
	[Id],
	[Value]
)
VALUES
(1,20),
(2,40),
(3,60),
(4,80),
(5,100),
(6,120),
(7,140),
(8,160),
(9,180),
(10,200),
(11,220),
(12,240),
(13,260),
(14,280),
(15,300),
(16,320),
(17,340),
(18,360),
(19,380),
(20,400),
(21,420),
(22,440),
(23,460),
(24,480),
(25,500),
(26,520),
(27,540),
(28,560),
(29,580),
(30,600),
(31,620),
(32,640),
(33,660),
(34,680),
(35,700),
(36,720),
(37,740),
(38,760),
(39,780),
(40,800),
(41,820),
(42,840),
(43,860),
(44,880),
(45,900),
(46,920),
(47,940),
(48,960),
(49,980),
(50,1000),
(51,1020),
(52,1040),
(53,1060),
(54,1080),
(55,1100),
(56,1120),
(57,1140),
(58,1160),
(59,1180),
(60,1200),
(61,1220),
(62,1240),
(63,1260),
(64,1280),
(65,1300),
(66,1320),
(67,1340),
(68,1360),
(69,1380),
(70,1400),
(71,1420),
(72,1440),
(73,1460),
(74,1480),
(75,1500),
(76,1520),
(77,1540),
(78,1560),
(79,1580),
(80,1600),
(81,1620),
(82,1640),
(83,1660),
(84,1680),
(85,1700),
(86,1720),
(87,1740),
(88,1760),
(89,1780),
(90,1800),
(91,1820),
(92,1840),
(93,1860),
(94,1880),
(95,1900),
(96,1920),
(97,1940),
(98,1960),
(99,1980),
(100,2000)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[ParentId],
	[d_1].[SubId],
	[d_1].[cond],
	[d_1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[SampleClass1] [t1]
	) [m_1]
		INNER JOIN (
			SELECT
				[a_SubItem].[Id] as [cond],
				[a_SubItem].[Value] as [Value_1],
				[d].[Id],
				[d].[ParentId],
				[d].[SubId],
				ROW_NUMBER() OVER (PARTITION BY [d].[ParentId] ORDER BY [d].[Id]) as [rn]
			FROM
				[ChildEntitity] [d]
					LEFT JOIN [SubEntitity] [a_SubItem] ON [d].[SubId] = [a_SubItem].[Id]
			WHERE
				[d].[ParentId] % 3 = 0 AND [d].[ParentId] IS NOT NULL
		) [d_1] ON [m_1].[Id] = [d_1].[ParentId] AND [d_1].[ParentId] IS NOT NULL AND [d_1].[rn] <= 2

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass1] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[ParentId],
	[d_1].[SubId],
	[d_1].[cond],
	[d_1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[SampleClass2] [t1]
	) [m_1]
		INNER JOIN (
			SELECT
				[a_SubItem].[Id] as [cond],
				[a_SubItem].[Value] as [Value_1],
				[d].[Id],
				[d].[ParentId],
				[d].[SubId],
				ROW_NUMBER() OVER (PARTITION BY [d].[ParentId] ORDER BY [d].[Id]) as [rn]
			FROM
				[ChildEntitity] [d]
					LEFT JOIN [SubEntitity] [a_SubItem] ON [d].[SubId] = [a_SubItem].[Id]
			WHERE
				[d].[ParentId] % 3 = 0 AND [d].[ParentId] IS NOT NULL
		) [d_1] ON [m_1].[Id] = [d_1].[ParentId] AND [d_1].[ParentId] IS NOT NULL AND [d_1].[rn] <= 2

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass2] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubEntitity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ChildEntitity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass1]

