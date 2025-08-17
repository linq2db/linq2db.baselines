BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @value Decimal(1, 0)
SET     @value = 1

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
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @value Decimal(13, 3)
SET     @value = 2147483648.123

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

