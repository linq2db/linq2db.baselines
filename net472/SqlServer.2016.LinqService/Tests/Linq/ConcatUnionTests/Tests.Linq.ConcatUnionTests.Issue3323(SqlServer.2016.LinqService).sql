BeforeExecute
-- SqlServer.2016

CREATE TABLE [Issue3323Table]
(
	[Id]       Int            NOT NULL,
	[FistName] NVarChar(4000)     NULL,
	[LastName] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Issue3323Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName]
)
VALUES
(
	1,
	N'one',
	N'two'
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[FistName] + N' ' + [t1].[LastName]
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[FistName] + N' ' + [t2].[LastName]
FROM
	[Issue3323Table] [t2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue3323Table]

