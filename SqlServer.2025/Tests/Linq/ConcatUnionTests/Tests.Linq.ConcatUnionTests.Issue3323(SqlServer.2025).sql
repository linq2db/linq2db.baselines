-- SqlServer.2025

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

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Text],
	Coalesce([t1].[FirstName], N'') + N' ' + Coalesce([t1].[LastName], N'')
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	Coalesce([t2].[FirstName], N'') + N' ' + Coalesce([t2].[LastName], N'')
FROM
	[Issue3323Table] [t2]

