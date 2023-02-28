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
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2023, 2, 28, 4, 33, 36, 5582332, 7)
DECLARE @p_2 DateTime2
SET     @p_2 = DATETIME2FROMPARTS(2023, 2, 28, 4, 33, 37, 243571, 7)
DECLARE @p_3 DateTime2
SET     @p_3 = DATETIME2FROMPARTS(2023, 2, 28, 4, 33, 36, 5582332, 7)
DECLARE @p_4 DateTime2
SET     @p_4 = DATETIME2FROMPARTS(2023, 2, 28, 4, 33, 37, 243571, 7)

SELECT
	[p].[ID],
	[p].[Name],
	[p].[StartedOn],
	[p].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME CONTAINED IN (@p_1, @p_2) [p]
		INNER JOIN [TemporalTest] FOR SYSTEM_TIME CONTAINED IN (@p_3, @p_4) [t] ON [p].[ID] = [t].[ID]
ORDER BY
	[p].[StartedOn]

