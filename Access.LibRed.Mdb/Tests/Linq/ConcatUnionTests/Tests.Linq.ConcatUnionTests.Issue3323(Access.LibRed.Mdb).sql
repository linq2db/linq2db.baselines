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
	[t1].[Id],
	[t1].[Text],
	CASE
		WHEN [t1].[FirstName] IS NULL THEN ''
		ELSE [t1].[FirstName]
	END + ' ' + CASE
		WHEN [t1].[LastName] IS NULL THEN ''
		ELSE [t1].[LastName]
	END
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	CASE
		WHEN [t2].[FirstName] IS NULL THEN ''
		ELSE [t2].[FirstName]
	END + ' ' + CASE
		WHEN [t2].[LastName] IS NULL THEN ''
		ELSE [t2].[LastName]
	END
FROM
	[Issue3323Table] [t2]

