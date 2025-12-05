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
	[r].[Id],
	[r].[FirstName] + ' ' + [r].[LastName] as [Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1 as [Id],
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

-- SqlCe

SELECT
	[r].[Id] + 1 as [Id],
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FirstName] + ' ' + [r_1].[LastName] as [Text]
FROM
	[Issue3323Table] [r_1]

