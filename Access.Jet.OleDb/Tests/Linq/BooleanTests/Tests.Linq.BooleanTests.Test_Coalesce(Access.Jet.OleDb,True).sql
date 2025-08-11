BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
	IIF([r].[BooleanN] IS NULL, True, [r].[BooleanN])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
	IIF([r].[BooleanN] IS NULL, False, [r].[BooleanN])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
	(IIF([r].[BooleanN] IS NULL, [r].[Id] MOD 2 = 1, [r].[BooleanN]))

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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

