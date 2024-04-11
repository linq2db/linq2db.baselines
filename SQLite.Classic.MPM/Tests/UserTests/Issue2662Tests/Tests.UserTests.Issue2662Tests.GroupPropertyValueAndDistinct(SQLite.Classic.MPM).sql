BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [CountDistinctTest]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CountDistinctTest]
(
	[ID]       INTEGER NOT NULL,
	[GroupCol] INTEGER NOT NULL,
	[LinkCol]  INTEGER NOT NULL,
	[NotUsed]  INTEGER     NULL,

	CONSTRAINT [PK_CountDistinctTest] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [CountDistinctTest]
(
	[ID],
	[GroupCol],
	[LinkCol],
	[NotUsed]
)
VALUES
(0,0,0,NULL),
(1,0,1,NULL),
(2,0,2,NULL),
(3,0,3,NULL),
(4,0,4,NULL),
(5,0,0,NULL),
(6,0,1,NULL),
(7,0,2,NULL),
(8,0,3,NULL),
(9,0,4,NULL),
(10,0,0,NULL),
(11,0,1,NULL),
(12,0,2,NULL),
(13,0,3,NULL),
(14,0,4,NULL),
(15,0,0,NULL),
(16,0,1,NULL),
(17,0,2,NULL),
(18,0,3,NULL),
(19,0,4,NULL),
(20,1,0,NULL),
(21,1,1,NULL),
(22,1,2,NULL),
(23,1,3,NULL),
(24,1,4,NULL),
(25,1,0,NULL),
(26,1,1,NULL),
(27,1,2,NULL),
(28,1,3,NULL),
(29,1,4,NULL),
(30,1,0,NULL),
(31,1,1,NULL),
(32,1,2,NULL),
(33,1,3,NULL),
(34,1,4,NULL),
(35,1,0,NULL),
(36,1,1,NULL),
(37,1,2,NULL),
(38,1,3,NULL),
(39,1,4,NULL),
(40,2,0,NULL),
(41,2,1,NULL),
(42,2,2,NULL),
(43,2,3,NULL),
(44,2,4,NULL),
(45,2,0,NULL),
(46,2,1,NULL),
(47,2,2,NULL),
(48,2,3,NULL),
(49,2,4,NULL),
(50,2,0,NULL),
(51,2,1,NULL),
(52,2,2,NULL),
(53,2,3,NULL),
(54,2,4,NULL),
(55,2,0,NULL),
(56,2,1,NULL),
(57,2,2,NULL),
(58,2,3,NULL),
(59,2,4,NULL),
(60,3,0,NULL),
(61,3,1,NULL),
(62,3,2,NULL),
(63,3,3,NULL),
(64,3,4,NULL),
(65,3,0,NULL),
(66,3,1,NULL),
(67,3,2,NULL),
(68,3,3,NULL),
(69,3,4,NULL),
(70,3,0,NULL),
(71,3,1,NULL),
(72,3,2,NULL),
(73,3,3,NULL),
(74,3,4,NULL),
(75,3,0,NULL),
(76,3,1,NULL),
(77,3,2,NULL),
(78,3,3,NULL),
(79,3,4,NULL),
(80,4,0,NULL),
(81,4,1,NULL),
(82,4,2,NULL),
(83,4,3,NULL),
(84,4,4,NULL),
(85,4,0,NULL),
(86,4,1,NULL),
(87,4,2,NULL),
(88,4,3,NULL),
(89,4,4,NULL),
(90,4,0,NULL),
(91,4,1,NULL),
(92,4,2,NULL),
(93,4,3,NULL),
(94,4,4,NULL),
(95,4,0,NULL),
(96,4,1,NULL),
(97,4,2,NULL),
(98,4,3,NULL),
(99,4,4,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[grp].[GroupCol],
	COUNT(*),
	COUNT(DISTINCT [grp].[LinkCol])
FROM
	[CountDistinctTest] [grp]
GROUP BY
	[grp].[GroupCol]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [CountDistinctTest]

