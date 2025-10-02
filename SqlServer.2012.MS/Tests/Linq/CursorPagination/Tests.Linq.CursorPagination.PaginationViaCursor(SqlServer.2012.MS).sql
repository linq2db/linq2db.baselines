BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[BookingID],
	[t].[ServiceDate],
	[t].[Value]
FROM
	[Booking] [t]
WHERE
	[t].[ServiceDate] > DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
ORDER BY
	[t].[ServiceDate] DESC,
	[t].[BookingID] DESC

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
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
			[e].[Value] as [Value_1]
		FROM
			[Booking] [e]
		WHERE
			[e].[ServiceDate] > DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
	) [q]
WHERE
	[q].[RowNumber] <= @take

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 66
DECLARE @take Int -- Int32
SET     @take = 12

WITH [CTE_1]
(
	[Cursor_1],
	[RowNumber],
	[Data_ServiceDate],
	[Data_Value]
)
AS
(
	SELECT
		[e].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [e].[ServiceDate] DESC, [e].[BookingID] DESC),
		[e].[ServiceDate],
		[e].[Value]
	FROM
		[Booking] [e]
	WHERE
		[e].[ServiceDate] > DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
)
SELECT
	[q].[RowNumber],
	[q].[Cursor_1],
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 30
DECLARE @take Int -- Int32
SET     @take = 12

WITH [CTE_1]
(
	[Cursor_1],
	[RowNumber],
	[Data_ServiceDate],
	[Data_Value]
)
AS
(
	SELECT
		[e].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [e].[ServiceDate] DESC, [e].[BookingID] DESC),
		[e].[ServiceDate],
		[e].[Value]
	FROM
		[Booking] [e]
	WHERE
		[e].[ServiceDate] > DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
)
SELECT
	[q].[RowNumber],
	[q].[Cursor_1],
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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @cursorValue Int -- Int32
SET     @cursorValue = 3
DECLARE @take Int -- Int32
SET     @take = 12

WITH [CTE_1]
(
	[Cursor_1],
	[RowNumber],
	[Data_ServiceDate],
	[Data_Value]
)
AS
(
	SELECT
		[e].[BookingID],
		ROW_NUMBER() OVER(ORDER BY [e].[ServiceDate] DESC, [e].[BookingID] DESC),
		[e].[ServiceDate],
		[e].[Value]
	FROM
		[Booking] [e]
	WHERE
		[e].[ServiceDate] > DATETIME2FROMPARTS(2020, 2, 27, 17, 54, 55, 1231234, 7)
)
SELECT
	[q].[RowNumber],
	[q].[Cursor_1],
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

