-- SqlServer.2016

SELECT
	[r].[Id],
	[r].[Boolean],
	[r].[BooleanN],
	[r].[Int32],
	[r].[Int32N],
	[r].[Decimal],
	[r].[DecimalN],
	[r].[Double],
	[r].[DoubleN]
FROM
	[BooleanTable] [r]
WHERE
	Coalesce([r].[BooleanN], 1) = 1

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Boolean],
	[t1].[BooleanN],
	[t1].[Int32],
	[t1].[Int32N],
	[t1].[Decimal],
	[t1].[DecimalN],
	[t1].[Double],
	[t1].[DoubleN]
FROM
	[BooleanTable] [t1]

-- SqlServer.2016

SELECT
	[r].[Id],
	[r].[Boolean],
	[r].[BooleanN],
	[r].[Int32],
	[r].[Int32N],
	[r].[Decimal],
	[r].[DecimalN],
	[r].[Double],
	[r].[DoubleN]
FROM
	[BooleanTable] [r]
WHERE
	Coalesce([r].[BooleanN], 0) = 1

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Boolean],
	[t1].[BooleanN],
	[t1].[Int32],
	[t1].[Int32N],
	[t1].[Decimal],
	[t1].[DecimalN],
	[t1].[Double],
	[t1].[DoubleN]
FROM
	[BooleanTable] [t1]

-- SqlServer.2016

SELECT
	[r].[Id],
	[r].[Boolean],
	[r].[BooleanN],
	[r].[Int32],
	[r].[Int32N],
	[r].[Decimal],
	[r].[DecimalN],
	[r].[Double],
	[r].[DoubleN]
FROM
	[BooleanTable] [r]
WHERE
	Coalesce([r].[BooleanN], IIF([r].[Id] % 2 = 1, 1, 0)) = 1

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Boolean],
	[t1].[BooleanN],
	[t1].[Int32],
	[t1].[Int32N],
	[t1].[Decimal],
	[t1].[DecimalN],
	[t1].[Double],
	[t1].[DoubleN]
FROM
	[BooleanTable] [t1]

