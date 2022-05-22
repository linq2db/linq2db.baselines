BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Booking]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Booking]', N'U') IS NULL)
	CREATE TABLE [Booking]
	(
		[BookingID]   Int      NOT NULL,
		[ServiceDate] DateTime NOT NULL,
		[Value]       Int      NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [Booking]
(
	[BookingID],
	[ServiceDate],
	[Value]
)
VALUES
(1,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),1),
(2,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),2),
(3,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),3),
(4,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),4),
(5,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),5),
(6,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),6),
(7,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),7),
(8,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),8),
(9,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),9),
(10,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),10),
(11,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),11),
(12,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),12),
(13,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),13),
(14,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),14),
(15,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),15),
(16,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),16),
(17,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),17),
(18,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),18),
(19,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),19),
(20,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),20),
(21,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),21),
(22,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),22),
(23,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),23),
(24,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),24),
(25,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),25),
(26,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),26),
(27,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),27),
(28,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),28),
(29,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),29),
(30,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),30),
(31,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),31),
(32,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),32),
(33,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),33),
(34,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),34),
(35,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),35),
(36,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),36),
(37,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),37),
(38,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),38),
(39,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),39),
(40,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),40),
(41,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),41),
(42,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),42),
(43,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),43),
(44,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),44),
(45,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),45),
(46,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),46),
(47,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),47),
(48,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),48),
(49,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),49),
(50,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),50),
(51,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),51),
(52,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),52),
(53,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),53),
(54,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),54),
(55,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),55),
(56,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),56),
(57,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),57),
(58,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),58),
(59,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),59),
(60,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),60),
(61,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),61),
(62,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),62),
(63,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),63),
(64,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),64),
(65,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),65),
(66,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),66),
(67,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),67),
(68,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),68),
(69,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),69),
(70,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),70),
(71,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),71),
(72,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),72),
(73,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),73),
(74,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),74),
(75,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),75),
(76,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),76),
(77,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),77),
(78,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),78),
(79,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),79),
(80,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),80),
(81,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),81),
(82,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),82),
(83,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),83),
(84,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),84),
(85,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),85),
(86,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),86),
(87,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),87),
(88,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),88),
(89,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),89),
(90,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),90),
(91,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),91),
(92,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),92),
(93,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),93),
(94,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),94),
(95,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),95),
(96,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),96),
(97,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),97),
(98,DATETIMEFROMPARTS(2020, 2, 26, 17, 54, 55, 123),98),
(99,DATETIMEFROMPARTS(2020, 2, 28, 17, 54, 55, 123),99),
(100,DATETIMEFROMPARTS(2020, 2, 27, 17, 54, 55, 123),100)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)

SELECT
	[t].[BookingID],
	[t].[ServiceDate],
	[t].[Value]
FROM
	[Booking] [t]
WHERE
	[t].[ServiceDate] > @ServiceDate
ORDER BY
	[t].[ServiceDate] DESC,
	[t].[BookingID] DESC

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
DECLARE @take BigInt -- Int64
SET     @take = 12

SELECT
	[q].[c1],
	[q].[RowNumber],
	[q].[BookingID],
	[q].[ServiceDate],
	[q].[Value_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER(ORDER BY [t].[ServiceDate] DESC, [t].[BookingID] DESC) as [RowNumber],
			COUNT(*) OVER() as [c1],
			[t].[BookingID],
			[t].[ServiceDate],
			[t].[Value] as [Value_1]
		FROM
			[Booking] [t]
		WHERE
			[t].[ServiceDate] > @ServiceDate
	) [q]
WHERE
	[q].[RowNumber] <= @take

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 66
DECLARE @take BigInt -- Int64
SET     @take = 12

WITH [CTE_1]
(
	[Cursor],
	[RowNumber],
	[ServiceDate],
	[Value]
)
AS
(
	SELECT
		[t].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [t].[ServiceDate] DESC, [t].[BookingID] DESC),
		[t].[ServiceDate],
		[t].[Value]
	FROM
		[Booking] [t]
	WHERE
		[t].[ServiceDate] > @ServiceDate
)
SELECT
	[q].[RowNumber],
	[q].[Cursor],
	[q].[ServiceDate],
	[q].[Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 30
DECLARE @take BigInt -- Int64
SET     @take = 12

WITH [CTE_1]
(
	[Cursor],
	[RowNumber],
	[ServiceDate],
	[Value]
)
AS
(
	SELECT
		[t].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [t].[ServiceDate] DESC, [t].[BookingID] DESC),
		[t].[ServiceDate],
		[t].[Value]
	FROM
		[Booking] [t]
	WHERE
		[t].[ServiceDate] > @ServiceDate
)
SELECT
	[q].[RowNumber],
	[q].[Cursor],
	[q].[ServiceDate],
	[q].[Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 94
DECLARE @take BigInt -- Int64
SET     @take = 12

WITH [CTE_1]
(
	[Cursor],
	[RowNumber],
	[ServiceDate],
	[Value]
)
AS
(
	SELECT
		[t].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [t].[ServiceDate] DESC, [t].[BookingID] DESC),
		[t].[ServiceDate],
		[t].[Value]
	FROM
		[Booking] [t]
	WHERE
		[t].[ServiceDate] > @ServiceDate
)
SELECT
	[q].[RowNumber],
	[q].[Cursor],
	[q].[ServiceDate],
	[q].[Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 58
DECLARE @take BigInt -- Int64
SET     @take = 12

WITH [CTE_1]
(
	[Cursor],
	[RowNumber],
	[ServiceDate],
	[Value]
)
AS
(
	SELECT
		[t].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [t].[ServiceDate] DESC, [t].[BookingID] DESC),
		[t].[ServiceDate],
		[t].[Value]
	FROM
		[Booking] [t]
	WHERE
		[t].[ServiceDate] > @ServiceDate
)
SELECT
	[q].[RowNumber],
	[q].[Cursor],
	[q].[ServiceDate],
	[q].[Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 22
DECLARE @take BigInt -- Int64
SET     @take = 12

WITH [CTE_1]
(
	[Cursor],
	[RowNumber],
	[ServiceDate],
	[Value]
)
AS
(
	SELECT
		[t].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [t].[ServiceDate] DESC, [t].[BookingID] DESC),
		[t].[ServiceDate],
		[t].[Value]
	FROM
		[Booking] [t]
	WHERE
		[t].[ServiceDate] > @ServiceDate
)
SELECT
	[q].[RowNumber],
	[q].[Cursor],
	[q].[ServiceDate],
	[q].[Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ServiceDate DateTime2
SET     @ServiceDate = DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 1
DECLARE @take BigInt -- Int64
SET     @take = 12

WITH [CTE_1]
(
	[Cursor],
	[RowNumber],
	[ServiceDate],
	[Value]
)
AS
(
	SELECT
		[t].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [t].[ServiceDate] DESC, [t].[BookingID] DESC),
		[t].[ServiceDate],
		[t].[Value]
	FROM
		[Booking] [t]
	WHERE
		[t].[ServiceDate] > @ServiceDate
)
SELECT
	[q].[RowNumber],
	[q].[Cursor],
	[q].[ServiceDate],
	[q].[Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Booking]

