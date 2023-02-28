BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2023, 2, 28, 4, 39, 2, 7433088, 7)
DECLARE @p_2 DateTime2
SET     @p_2 = DATETIME2FROMPARTS(2023, 2, 28, 4, 39, 3, 2249288, 7)

SELECT
	[p].[ID],
	[p].[Name],
	[p].[StartedOn],
	[p].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME BETWEEN @p_1 AND @p_2 [p]
		INNER JOIN [TemporalTest] FOR SYSTEM_TIME BETWEEN '2023-02-28T04:39:02.743' AND '2023-02-28T04:39:03.224' [t] ON [p].[ID] = [t].[ID]
ORDER BY
	[p].[StartedOn]

