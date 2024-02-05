BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[e].[ID],
	[_2].[SmallIntValue]
FROM
	(
		SELECT DISTINCT
			[_].[ID],
			[_].[SmallIntValue]
		FROM
			[LinqDataTypes] [_]
	) [e]
		LEFT JOIN (
			SELECT DISTINCT
				[_1].[ID],
				[_1].[SmallIntValue]
			FROM
				[LinqDataTypes] [_1]
		) [_2] ON [_2].[ID] = [e].[ID]

