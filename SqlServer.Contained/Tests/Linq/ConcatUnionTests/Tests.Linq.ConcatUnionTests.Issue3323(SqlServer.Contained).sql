BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Text],
	[t1].[FirstName] + N' ' + [t1].[LastName]
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	[t2].[FirstName] + N' ' + [t2].[LastName]
FROM
	[Issue3323Table] [t2]

