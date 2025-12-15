-- SqlServer.2012.MS SqlServer.2012
DECLARE @value Decimal
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

-- SqlServer.2012.MS SqlServer.2012
DECLARE @value Decimal
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

