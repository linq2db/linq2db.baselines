--  SqlServer.2008
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-02-29T17:54:55.1231234+00:00' AS DATETIMEOFFSET)
DECLARE @DateTimeOffsetN DateTimeOffset
SET     @DateTimeOffsetN = CAST('2020-02-29T17:54:55.1231234+00:00' AS DATETIMEOFFSET)

UPDATE
	[Types]
SET
	[DateTimeOffset] = @DateTimeOffset,
	[DateTimeOffsetN] = @DateTimeOffsetN
WHERE
	[Types].[Id] = 2



