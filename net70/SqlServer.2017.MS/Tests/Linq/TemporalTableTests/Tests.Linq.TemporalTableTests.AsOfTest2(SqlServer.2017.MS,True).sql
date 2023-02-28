BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[sys].[objects] [o]
		WHERE
			[o].[object_id] = OBJECT_ID(N'dbo.TemporalTest')
	), 1, 0)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[Name],
	[t1].[StartedOn],
	[t1].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME ALL  [t1]
ORDER BY
	[t1].[StartedOn]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ID],
	[p].[Name],
	[p].[StartedOn],
	[p].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME AS OF '2023-02-28T04:33:36.758' [p]
WHERE
	[p].[ID] = 1

