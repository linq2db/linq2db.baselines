BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @value BigInt -- Int64
SET     @value = NULL

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			@value as [Value_1]
		FROM
			[Person] [r]
	) [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @value BigInt -- Int64
SET     @value = 2147483648

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			@value as [Value_1]
		FROM
			[Person] [r]
	) [t1]

