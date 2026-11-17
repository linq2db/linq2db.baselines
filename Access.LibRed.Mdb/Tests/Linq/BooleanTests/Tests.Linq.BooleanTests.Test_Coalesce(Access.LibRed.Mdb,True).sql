-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
	CASE
		WHEN [r].[BooleanN] IS NULL THEN True
		ELSE [r].[BooleanN]
	END

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
	CASE
		WHEN [r].[BooleanN] IS NULL THEN False
		ELSE [r].[BooleanN]
	END

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
	CASE
		WHEN [r].[BooleanN] IS NULL THEN [r].[Id] MOD 2 = 1
		ELSE [r].[BooleanN]
	END

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

