-- Access.Jet.OleDb AccessOleDb
DECLARE @ts DBTime -- Time
SET     @ts = NULL
DECLARE @ts_1 DBTime -- Time
SET     @ts_1 = NULL
DECLARE @ts_2 DBTime -- Time
SET     @ts_2 = NULL
DECLARE @ts_3 DBTime -- Time
SET     @ts_3 = NULL
DECLARE @ts_4 DBTime -- Time
SET     @ts_4 = NULL
DECLARE @ts_5 DBTime -- Time
SET     @ts_5 = NULL
DECLARE @ts_6 DBTime -- Time
SET     @ts_6 = NULL
DECLARE @ts_7 DBTime -- Time
SET     @ts_7 = NULL
DECLARE @ts_8 DBTime -- Time
SET     @ts_8 = NULL
DECLARE @ts_9 DBTime -- Time
SET     @ts_9 = NULL
DECLARE @ts_10 DBTime -- Time
SET     @ts_10 = NULL
DECLARE @ts_11 DBTime -- Time
SET     @ts_11 = NULL
DECLARE @ts_12 DBTime -- Time
SET     @ts_12 = NULL
DECLARE @ts_13 DBTime -- Time
SET     @ts_13 = NULL
DECLARE @ts_14 DBTime -- Time
SET     @ts_14 = NULL
DECLARE @ts_15 DBTime -- Time
SET     @ts_15 = NULL

SELECT
	[t].[Id],
	[t].[DateTime] + @ts,
	[t].[DateTimeNullable] + @ts_1,
	[t].[DateTime2] + @ts_2,
	[t].[DateTime2Nullable] + @ts_3,
	[t].[DateTime] - @ts_4,
	[t].[DateTimeNullable] - @ts_5,
	[t].[DateTime2] - @ts_6,
	[t].[DateTime2Nullable] - @ts_7,
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL)
FROM
	[DateTypes] [t]
UNION ALL
SELECT
	[t_1].[Id],
	[t_1].[DateTime] + @ts_8,
	[t_1].[DateTimeNullable] + @ts_9,
	[t_1].[DateTime2] + @ts_10,
	[t_1].[DateTime2Nullable] + @ts_11,
	[t_1].[DateTime] - @ts_12,
	[t_1].[DateTimeNullable] - @ts_13,
	[t_1].[DateTime2] - @ts_14,
	[t_1].[DateTime2Nullable] - @ts_15,
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL),
	IIF(False, #0001-01-01#, NULL)
FROM
	[DateTypes] [t_1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[DateTime],
	[t1].[DateTimeNullable],
	[t1].[DateTime2],
	[t1].[DateTime2Nullable]
FROM
	[DateTypes] [t1]

