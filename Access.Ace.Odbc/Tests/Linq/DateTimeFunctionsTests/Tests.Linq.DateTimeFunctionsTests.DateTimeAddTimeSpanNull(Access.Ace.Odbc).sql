-- Access.Ace.Odbc AccessODBC
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL
DECLARE @ts Time
SET     @ts = NULL

SELECT
	[t].[Id],
	[t].[DateTime] + ?,
	[t].[DateTimeNullable] + ?,
	[t].[DateTime2] + ?,
	[t].[DateTime2Nullable] + ?,
	[t].[DateTime] - ?,
	[t].[DateTimeNullable] - ?,
	[t].[DateTime2] - ?,
	[t].[DateTime2Nullable] - ?,
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL)
FROM
	[DateTypes] [t]
UNION ALL
SELECT
	[t_1].[Id],
	[t_1].[DateTime] + ?,
	[t_1].[DateTimeNullable] + ?,
	[t_1].[DateTime2] + ?,
	[t_1].[DateTime2Nullable] + ?,
	[t_1].[DateTime] - ?,
	[t_1].[DateTimeNullable] - ?,
	[t_1].[DateTime2] - ?,
	[t_1].[DateTime2Nullable] - ?,
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL)
FROM
	[DateTypes] [t_1]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[DateTime],
	[t1].[DateTimeNullable],
	[t1].[DateTime2],
	[t1].[DateTime2Nullable]
FROM
	[DateTypes] [t1]

