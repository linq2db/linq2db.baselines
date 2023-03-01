BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2023, 3, 1, 17, 52, 16, 9310957, 7)
DECLARE @p_2 DateTime2
SET     @p_2 = DATETIME2FROMPARTS(2023, 3, 1, 17, 52, 17, 3967290, 7)

SELECT
	[p].[ID],
	[p].[Name],
	[p].[StartedOn],
	[p].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME BETWEEN @p_1 AND @p_2 [p]
		INNER JOIN [TemporalTest] FOR SYSTEM_TIME BETWEEN '2023-03-01T17:52:16.931' AND '2023-03-01T17:52:17.396' [t] ON [p].[ID] = [t].[ID]
ORDER BY
	[p].[StartedOn]

