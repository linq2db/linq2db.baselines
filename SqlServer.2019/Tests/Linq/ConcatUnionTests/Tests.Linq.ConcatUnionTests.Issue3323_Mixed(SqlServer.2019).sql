-- SqlServer.2019

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
	N'one',
	N'two',
	N'text'
)

-- SqlServer.2019

SELECT
	[r].[Id],
	Coalesce([r].[FirstName], N'') + N' ' + Coalesce([r].[LastName], N'')
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

-- SqlServer.2019

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	Coalesce([r_1].[FirstName], N'') + N' ' + Coalesce([r_1].[LastName], N'')
FROM
	[Issue3323Table] [r_1]

