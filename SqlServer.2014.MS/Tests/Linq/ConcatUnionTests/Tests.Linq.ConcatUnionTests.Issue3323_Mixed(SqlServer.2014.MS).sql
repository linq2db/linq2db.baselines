BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[Id],
	[r].[FirstName] + N' ' + [r].[LastName]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FirstName] + N' ' + [r_1].[LastName]
FROM
	[Issue3323Table] [r_1]

