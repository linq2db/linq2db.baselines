-- Access.Ace.OleDb AccessOleDb
SELECT
	Fix([t].[X] / 2)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t].[Id]
FROM
	[DecimalStoredIntegerTable] [t]
WHERE
	Fix([t].[X] / 2) = -3
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @two VarChar -- AnsiString
SET     @two = 2

SELECT
	Fix([t].[X] / @two)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	Fix(([t].[X] + 1) / 2)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	Fix(-[t].[X] / 2)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	Fix(Abs([t].[X]) / 2)
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	Fix(60 / [t].[X])
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	Fix([t].[X] / [t].[X2])
FROM
	[DecimalStoredIntegerTable] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[X],
	[t1].[X2]
FROM
	[DecimalStoredIntegerTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	Fix(SUM([g_1].[X]) / 2)
FROM
	[DecimalStoredIntegerTable] [g_1]

