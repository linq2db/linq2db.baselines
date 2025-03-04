BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value BigInt -- Int64
SET     @value = -1200000000

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[TimeSpanAsTicks] [r]
WHERE
	[r].[Value] = @value

