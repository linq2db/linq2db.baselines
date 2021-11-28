BeforeExecute
-- SqlServer.2008

CREATE TABLE [Issue3323Table]
(
	[Id]       Int            NOT NULL,
	[FistName] NVarChar(4000)     NULL,
	[LastName] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Issue3323Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

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
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3323Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3323Table]

