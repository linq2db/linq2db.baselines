BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue4460Table]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Issue4460Table]', N'U') IS NULL)
	CREATE TABLE [Issue4460Table]
	(
		[Id]      Int            NOT NULL,
		[Code]    NVarChar(4000)     NULL,
		[Name]    NVarChar(4000)     NULL,
		[Surname] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(1,N'GrandChild',N'Tom',N'Black')

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue4460Table]

