-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [CalculatedColumnSetTable]
(
	[Id],
	[FirstName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	CASE
		WHEN [r].[FirstName] IS NULL THEN ''
		ELSE [r].[FirstName]
	END + ' ' + CASE
		WHEN [r].[LastName] IS NULL THEN ''
		ELSE [r].[LastName]
	END
FROM
	[CalculatedColumnSetTable] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[CalculatedColumnSetTable] [r_1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[CalculatedColumnSetTable] [r]
UNION ALL
SELECT
	[r_1].[Id],
	CASE
		WHEN [r_1].[FirstName] IS NULL THEN ''
		ELSE [r_1].[FirstName]
	END + ' ' + CASE
		WHEN [r_1].[LastName] IS NULL THEN ''
		ELSE [r_1].[LastName]
	END
FROM
	[CalculatedColumnSetTable] [r_1]

