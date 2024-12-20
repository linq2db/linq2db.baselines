﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Booking]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Booking]', N'U') IS NULL)
	CREATE TABLE [Booking]
	(
		[BookingID]   Int       NOT NULL,
		[ServiceDate] DateTime2 NOT NULL,
		[Value]       Int       NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [Booking]
(
	[BookingID],
	[ServiceDate],
	[Value]
)
VALUES
(1,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),1),
(2,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),2),
(3,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),3),
(4,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),4),
(5,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),5),
(6,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),6),
(7,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),7),
(8,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),8),
(9,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),9),
(10,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),10),
(11,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),11),
(12,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),12),
(13,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),13),
(14,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),14),
(15,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),15),
(16,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),16),
(17,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),17),
(18,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),18),
(19,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),19),
(20,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),20),
(21,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),21),
(22,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),22),
(23,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),23),
(24,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),24),
(25,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),25),
(26,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),26),
(27,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),27),
(28,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),28),
(29,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),29),
(30,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),30),
(31,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),31),
(32,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),32),
(33,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),33),
(34,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),34),
(35,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),35),
(36,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),36),
(37,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),37),
(38,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),38),
(39,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),39),
(40,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),40),
(41,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),41),
(42,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),42),
(43,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),43),
(44,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),44),
(45,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),45),
(46,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),46),
(47,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),47),
(48,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),48),
(49,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),49),
(50,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),50),
(51,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),51),
(52,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),52),
(53,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),53),
(54,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),54),
(55,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),55),
(56,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),56),
(57,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),57),
(58,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),58),
(59,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),59),
(60,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),60),
(61,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),61),
(62,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),62),
(63,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),63),
(64,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),64),
(65,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),65),
(66,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),66),
(67,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),67),
(68,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),68),
(69,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),69),
(70,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),70),
(71,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),71),
(72,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),72),
(73,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),73),
(74,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),74),
(75,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),75),
(76,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),76),
(77,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),77),
(78,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),78),
(79,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),79),
(80,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),80),
(81,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),81),
(82,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),82),
(83,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),83),
(84,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),84),
(85,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),85),
(86,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),86),
(87,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),87),
(88,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),88),
(89,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),89),
(90,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),90),
(91,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),91),
(92,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),92),
(93,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),93),
(94,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),94),
(95,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),95),
(96,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),96),
(97,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),97),
(98,DATETIME2FROMPARTS(2020, 2, 26, 17, 54, 55, 1231234, 7),98),
(99,DATETIME2FROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 7),99),
(100,DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7),100)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[BookingID],
	[t].[ServiceDate],
	[t].[Value]
FROM
	[Booking] [t]
WHERE
	[t].[ServiceDate] > DateAdd(day, -2, DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
ORDER BY
	[t].[ServiceDate] DESC,
	[t].[BookingID] DESC

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take BigInt -- Int64
SET     @take = 12

SELECT
	[q].[TotalCount],
	[q].[RowNumber],
	[q].[BookingID],
	[q].[ServiceDate],
	[q].[Value_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER(ORDER BY [e].[ServiceDate] DESC, [e].[BookingID] DESC) as [RowNumber],
			COUNT(*) OVER() as [TotalCount],
			[e].[BookingID],
			[e].[ServiceDate],
			[e].[Value_1]
		FROM
			(
				SELECT
					[t].[BookingID],
					[t].[ServiceDate],
					[t].[Value] as [Value_1]
				FROM
					[Booking] [t]
				WHERE
					[t].[ServiceDate] > DateAdd(day, -2, DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
			) [e]
	) [q]
WHERE
	[q].[RowNumber] <= @take

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 66
DECLARE @take Int -- Int32
SET     @take = 12

WITH [CTE_1]
(
	[Cursor_1],
	[RowNumber],
	[Data_BookingID],
	[Data_ServiceDate],
	[Data_Value]
)
AS
(
	SELECT
		[e].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [e].[ServiceDate] DESC, [e].[BookingID] DESC),
		[e].[BookingID],
		[e].[ServiceDate],
		[e].[Value_1]
	FROM
		(
			SELECT
				[t].[BookingID],
				[t].[ServiceDate],
				[t].[Value] as [Value_1]
			FROM
				[Booking] [t]
			WHERE
				[t].[ServiceDate] > DateAdd(day, -2, DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
		) [e]
)
SELECT
	[q].[RowNumber],
	[q].[Cursor_1],
	[q].[Data_BookingID],
	[q].[Data_ServiceDate],
	[q].[Data_Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor_1] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 30
DECLARE @take Int -- Int32
SET     @take = 12

WITH [CTE_1]
(
	[Cursor_1],
	[RowNumber],
	[Data_BookingID],
	[Data_ServiceDate],
	[Data_Value]
)
AS
(
	SELECT
		[e].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [e].[ServiceDate] DESC, [e].[BookingID] DESC),
		[e].[BookingID],
		[e].[ServiceDate],
		[e].[Value_1]
	FROM
		(
			SELECT
				[t].[BookingID],
				[t].[ServiceDate],
				[t].[Value] as [Value_1]
			FROM
				[Booking] [t]
			WHERE
				[t].[ServiceDate] > DateAdd(day, -2, DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
		) [e]
)
SELECT
	[q].[RowNumber],
	[q].[Cursor_1],
	[q].[Data_BookingID],
	[q].[Data_ServiceDate],
	[q].[Data_Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor_1] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 3
DECLARE @take Int -- Int32
SET     @take = 12

WITH [CTE_1]
(
	[Cursor_1],
	[RowNumber],
	[Data_BookingID],
	[Data_ServiceDate],
	[Data_Value]
)
AS
(
	SELECT
		[e].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [e].[ServiceDate] DESC, [e].[BookingID] DESC),
		[e].[BookingID],
		[e].[ServiceDate],
		[e].[Value_1]
	FROM
		(
			SELECT
				[t].[BookingID],
				[t].[ServiceDate],
				[t].[Value] as [Value_1]
			FROM
				[Booking] [t]
			WHERE
				[t].[ServiceDate] > DateAdd(day, -2, DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7))
		) [e]
)
SELECT
	[q].[RowNumber],
	[q].[Cursor_1],
	[q].[Data_BookingID],
	[q].[Data_ServiceDate],
	[q].[Data_Value]
FROM
	[CTE_1] [q]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[CTE_1] [c_1]
		WHERE
			[c_1].[Cursor_1] = @cursorValue AND [q].[RowNumber] > [c_1].[RowNumber] AND
			[q].[RowNumber] <= [c_1].[RowNumber] + @take
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Booking]

