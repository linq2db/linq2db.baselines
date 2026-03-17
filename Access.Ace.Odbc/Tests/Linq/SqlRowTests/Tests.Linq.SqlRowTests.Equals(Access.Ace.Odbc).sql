-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Three] = [i].[Four] - 1

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Four] = [i].[Three]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Nil] = [i].[Two]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 = [i].[One] AND [i].[Nil] = [i].[Nil] AND 3 = [i].[Three]

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	1 = [i].[One] AND NULL >= [i].[Nil] AND 3 = [i].[Three]

