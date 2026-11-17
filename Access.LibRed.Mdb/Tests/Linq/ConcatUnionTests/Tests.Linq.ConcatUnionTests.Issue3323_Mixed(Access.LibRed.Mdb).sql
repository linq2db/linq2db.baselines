-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [Issue3323Table]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
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
	[Issue3323Table] [r_1]

