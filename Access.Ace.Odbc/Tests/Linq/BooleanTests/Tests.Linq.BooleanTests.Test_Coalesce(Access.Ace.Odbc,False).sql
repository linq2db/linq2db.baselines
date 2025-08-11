BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @True Bit -- Boolean
SET     @True = True

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
	IIF([r].[BooleanN] IS NULL, ?, [r].[BooleanN])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC
DECLARE @False Bit -- Boolean
SET     @False = False

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
	IIF([r].[BooleanN] IS NULL, ?, [r].[BooleanN])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

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

