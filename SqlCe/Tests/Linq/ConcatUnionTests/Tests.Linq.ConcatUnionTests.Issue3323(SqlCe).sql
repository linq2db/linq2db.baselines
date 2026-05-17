-- SqlCe

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

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Text],
	Coalesce([t1].[FirstName], '') + ' ' + Coalesce([t1].[LastName], '') as [FullName]
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	Coalesce([t2].[FirstName], '') + ' ' + Coalesce([t2].[LastName], '') as [FullName]
FROM
	[Issue3323Table] [t2]

