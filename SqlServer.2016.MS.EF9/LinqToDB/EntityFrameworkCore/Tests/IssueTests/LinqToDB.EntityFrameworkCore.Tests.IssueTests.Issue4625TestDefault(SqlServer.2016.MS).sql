-- SqlServer.2016
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 0, 7)
DECLARE @DateTimeOffsetN DateTimeOffset
SET     @DateTimeOffsetN = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 0, 7)

UPDATE
	[Types]
SET
	[DateTimeOffset] = @DateTimeOffset,
	[DateTimeOffsetN] = @DateTimeOffsetN
WHERE
	[Types].[Id] = 2



