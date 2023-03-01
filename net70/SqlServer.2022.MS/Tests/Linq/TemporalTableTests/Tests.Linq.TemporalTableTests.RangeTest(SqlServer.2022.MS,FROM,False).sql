BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p_1 DateTime2
SET     @p_1 = DATETIME2FROMPARTS(2023, 3, 1, 17, 59, 7, 2456552, 7)
DECLARE @p_2 DateTime2
SET     @p_2 = DATETIME2FROMPARTS(2023, 3, 1, 17, 59, 7, 7425409, 7)

SELECT
	[t1].[ID],
	[t1].[Name],
	[t1].[StartedOn],
	[t1].[EndedOn]
FROM
	[TemporalTest] FOR SYSTEM_TIME FROM @p_1 TO @p_2 [t1]
ORDER BY
	[t1].[StartedOn]

