BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2023, 3, 1, 18, 51, 46, 7633510, 7)
DECLARE @p_2 DateTime2
SET     @p_2 = DATETIME2FROMPARTS(2023, 3, 1, 18, 51, 47, 2193448, 7)

SELECT
	[p].[ID],
	[p].[Name],
	[p].[StartedOn],
	[p].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME BETWEEN @p_1 AND @p_2 [p]
		INNER JOIN [TemporalTest] FOR SYSTEM_TIME BETWEEN '2023-03-01T18:51:46.763' AND '2023-03-01T18:51:47.219' [t] ON [p].[ID] = [t].[ID]
ORDER BY
	[p].[StartedOn]

