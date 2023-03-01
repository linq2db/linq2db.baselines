BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2023, 3, 1, 18, 51, 48, 5040946, 7)
DECLARE @p_2 DateTime2
SET     @p_2 = DATETIME2FROMPARTS(2023, 3, 1, 18, 51, 48, 9593865, 7)
DECLARE @p_3 DateTime2
SET     @p_3 = DATETIME2FROMPARTS(2023, 3, 1, 18, 51, 48, 5040946, 7)
DECLARE @p_4 DateTime2
SET     @p_4 = DATETIME2FROMPARTS(2023, 3, 1, 18, 51, 48, 9593865, 7)

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

