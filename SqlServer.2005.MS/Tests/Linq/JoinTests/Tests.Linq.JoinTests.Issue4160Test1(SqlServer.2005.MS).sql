BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160Person]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NULL)
	CREATE TABLE [Issue4160Person]
	(
		[Code] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4160Person]
(
	[Code]
)
SELECT N'SD' UNION ALL
SELECT N'SD' UNION ALL
SELECT N'SH'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NULL)
	CREATE TABLE [Issue4160City]
	(
		[Code] NVarChar(4000)     NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
SELECT N'SD',N'SYDNEY' UNION ALL
SELECT N'SD',N'SUNDAY' UNION ALL
SELECT N'SH',N'SYDHIP'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT DISTINCT
	(
		SELECT TOP (1)
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			([cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL)
	)
FROM
	[Issue4160Person] [pe]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160Person]

