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
SET     @p_1 = DATETIME2FROMPARTS(2023, 3, 1, 17, 56, 38, 3360621, 7)
DECLARE @p_2 DateTime2
SET     @p_2 = DATETIME2FROMPARTS(2023, 3, 1, 17, 56, 38, 8017326, 7)

SELECT
	[t1].[ID],
	[t1].[Name],
	[t1].[StartedOn],
	[t1].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME BETWEEN @p_1 AND @p_2 [t1]
ORDER BY
	[t1].[StartedOn]

