BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PaginationData]', N'U') IS NOT NULL)
	DROP TABLE [PaginationData]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PaginationData]', N'U') IS NULL)
	CREATE TABLE [PaginationData]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [PaginationData]
(
	[Id],
	[Value]
)
VALUES
(0,0),
(1,33),
(2,66),
(3,99),
(4,132),
(5,165),
(6,198),
(7,231),
(8,264),
(9,297),
(10,330),
(11,363),
(12,396),
(13,429),
(14,462),
(15,495),
(16,528),
(17,561),
(18,594),
(19,627),
(20,660),
(21,693),
(22,726),
(23,759),
(24,792),
(25,825),
(26,858),
(27,891),
(28,924),
(29,957),
(30,990),
(31,1023),
(32,1056),
(33,1089),
(34,1122),
(35,1155),
(36,1188),
(37,1221),
(38,1254),
(39,1287),
(40,1320),
(41,1353),
(42,1386),
(43,1419),
(44,1452),
(45,1485),
(46,1518),
(47,1551),
(48,1584),
(49,1617),
(50,1650),
(51,1683),
(52,1716),
(53,1749),
(54,1782),
(55,1815),
(56,1848),
(57,1881),
(58,1914),
(59,1947),
(60,1980),
(61,2013),
(62,2046),
(63,2079),
(64,2112),
(65,2145),
(66,2178),
(67,2211),
(68,2244),
(69,2277),
(70,2310),
(71,2343),
(72,2376),
(73,2409),
(74,2442),
(75,2475),
(76,2508),
(77,2541),
(78,2574),
(79,2607),
(80,2640),
(81,2673),
(82,2706),
(83,2739),
(84,2772),
(85,2805),
(86,2838),
(87,2871),
(88,2904),
(89,2937),
(90,2970),
(91,3003),
(92,3036),
(93,3069),
(94,3102),
(95,3135),
(96,3168),
(97,3201),
(98,3234),
(99,3267),
(100,3300),
(101,3333),
(102,3366),
(103,3399),
(104,3432),
(105,3465),
(106,3498),
(107,3531),
(108,3564),
(109,3597),
(110,3630),
(111,3663),
(112,3696),
(113,3729),
(114,3762),
(115,3795),
(116,3828),
(117,3861),
(118,3894),
(119,3927),
(120,3960),
(121,3993),
(122,4026),
(123,4059),
(124,4092),
(125,4125),
(126,4158),
(127,4191),
(128,4224),
(129,4257),
(130,4290),
(131,4323),
(132,4356),
(133,4389),
(134,4422),
(135,4455),
(136,4488),
(137,4521),
(138,4554),
(139,4587),
(140,4620),
(141,4653),
(142,4686),
(143,4719),
(144,4752),
(145,4785),
(146,4818),
(147,4851),
(148,4884),
(149,4917),
(150,4950),
(151,4983),
(152,5016),
(153,5049),
(154,5082),
(155,5115),
(156,5148),
(157,5181),
(158,5214),
(159,5247),
(160,5280),
(161,5313),
(162,5346),
(163,5379),
(164,5412),
(165,5445),
(166,5478),
(167,5511),
(168,5544),
(169,5577),
(170,5610),
(171,5643),
(172,5676),
(173,5709),
(174,5742),
(175,5775),
(176,5808),
(177,5841),
(178,5874),
(179,5907),
(180,5940),
(181,5973),
(182,6006),
(183,6039),
(184,6072),
(185,6105),
(186,6138),
(187,6171),
(188,6204),
(189,6237),
(190,6270),
(191,6303),
(192,6336),
(193,6369),
(194,6402),
(195,6435),
(196,6468),
(197,6501),
(198,6534),
(199,6567),
(200,6600),
(201,6633),
(202,6666),
(203,6699),
(204,6732),
(205,6765),
(206,6798),
(207,6831),
(208,6864),
(209,6897),
(210,6930),
(211,6963),
(212,6996),
(213,7029),
(214,7062),
(215,7095),
(216,7128),
(217,7161),
(218,7194),
(219,7227),
(220,7260),
(221,7293),
(222,7326),
(223,7359),
(224,7392),
(225,7425),
(226,7458),
(227,7491),
(228,7524),
(229,7557),
(230,7590),
(231,7623),
(232,7656),
(233,7689),
(234,7722),
(235,7755),
(236,7788),
(237,7821),
(238,7854),
(239,7887),
(240,7920),
(241,7953),
(242,7986),
(243,8019),
(244,8052),
(245,8085),
(246,8118),
(247,8151),
(248,8184),
(249,8217),
(250,8250),
(251,8283),
(252,8316),
(253,8349),
(254,8382),
(255,8415),
(256,8448),
(257,8481),
(258,8514),
(259,8547),
(260,8580),
(261,8613),
(262,8646),
(263,8679),
(264,8712),
(265,8745),
(266,8778),
(267,8811),
(268,8844),
(269,8877),
(270,8910),
(271,8943),
(272,8976),
(273,9009),
(274,9042),
(275,9075),
(276,9108),
(277,9141),
(278,9174),
(279,9207),
(280,9240),
(281,9273),
(282,9306),
(283,9339),
(284,9372),
(285,9405),
(286,9438),
(287,9471),
(288,9504),
(289,9537),
(290,9570),
(291,9603),
(292,9636),
(293,9669),
(294,9702),
(295,9735),
(296,9768),
(297,9801),
(298,9834),
(299,9867)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 20

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[PaginationData] [x]
WHERE
	[x].[Id] % 2 = 0
ORDER BY
	[x].[Id],
	[x].[Value] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 20
DECLARE @take Int -- Int32
SET     @take = 20

SELECT
	COUNT(*) OVER(),
	[x].[Id],
	[x].[Value]
FROM
	[PaginationData] [x]
WHERE
	[x].[Id] % 2 = 0
ORDER BY
	[x].[Id],
	[x].[Value] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Id Int -- Int32
SET     @Id = 2

WITH [pagination_cte] ([Data_Id], [RowNumber], [Data_Value])
AS
(
	SELECT
		[x].[Id],
		ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC),
		[x].[Value]
	FROM
		[PaginationData] [x]
	WHERE
		[x].[Id] % 2 = 0
)
SELECT
	[t1].[Data_Id],
	[t1].[Data_Value],
	[page].[c1],
	-1
FROM
	(
		SELECT TOP (@take)
			CAST([h].[RowNumber] - 1 AS Int) / 20 + 1 as [c1]
		FROM
			[pagination_cte] [h]
		WHERE
			[h].[Data_Id] = @Id
	) [page]
		INNER JOIN [pagination_cte] [t1] ON [t1].[RowNumber] BETWEEN CAST(([page].[c1] - 1) * 20 + 1 AS BigInt) AND CAST([page].[c1] * 20 AS BigInt)
ORDER BY
	[t1].[RowNumber]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Id Int -- Int32
SET     @Id = 78

WITH [pagination_cte]
(
	[Data_Id],
	[RowNumber],
	[Data_Value],
	[TotalCount]
)
AS
(
	SELECT
		[x].[Id],
		ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC),
		[x].[Value],
		COUNT(*) OVER()
	FROM
		[PaginationData] [x]
	WHERE
		[x].[Id] % 2 = 0
)
SELECT
	[t1].[Data_Id],
	[t1].[Data_Value],
	[page].[c1],
	[t1].[TotalCount]
FROM
	(
		SELECT TOP (@take)
			CAST([h].[RowNumber] - 1 AS Int) / 20 + 1 as [c1]
		FROM
			[pagination_cte] [h]
		WHERE
			[h].[Data_Id] = @Id
	) [page]
		INNER JOIN [pagination_cte] [t1] ON [t1].[RowNumber] BETWEEN CAST(([page].[c1] - 1) * 20 + 1 AS BigInt) AND CAST([page].[c1] * 20 AS BigInt)
ORDER BY
	[t1].[RowNumber]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2

SELECT TOP (1)
	([t1].[RowNumber] - 1) / 20 + 1
FROM
	(
		SELECT
			[x].[Id],
			ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC) as [RowNumber]
		FROM
			[PaginationData] [x]
		WHERE
			[x].[Id] % 2 = 0
	) [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 78

SELECT TOP (1)
	([t1].[RowNumber] - 1) / 20 + 1
FROM
	(
		SELECT
			[x].[Id],
			ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC) as [RowNumber]
		FROM
			[PaginationData] [x]
		WHERE
			[x].[Id] % 2 = 0
	) [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PaginationData]', N'U') IS NOT NULL)
	DROP TABLE [PaginationData]

