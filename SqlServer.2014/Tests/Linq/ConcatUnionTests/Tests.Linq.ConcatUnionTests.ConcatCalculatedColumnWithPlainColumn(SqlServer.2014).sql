-- SqlServer.2014
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
	N'one',
	N'two',
	N'text'
)

-- SqlServer.2014
SELECT
	[r].[Id],
	Coalesce([r].[FirstName], N'') + N' ' + Coalesce([r].[LastName], N'')
FROM
	[CalculatedColumnSetTable] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[CalculatedColumnSetTable] [r_1]

-- SqlServer.2014
SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[CalculatedColumnSetTable] [r]
UNION ALL
SELECT
	[r_1].[Id],
	Coalesce([r_1].[FirstName], N'') + N' ' + Coalesce([r_1].[LastName], N'')
FROM
	[CalculatedColumnSetTable] [r_1]

