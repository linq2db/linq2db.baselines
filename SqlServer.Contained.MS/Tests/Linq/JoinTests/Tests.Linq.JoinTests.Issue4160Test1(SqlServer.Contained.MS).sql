BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NULL)
	CREATE TABLE [Issue4160Person]
	(
		[Code] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(N'SD'),
(N'SD'),
(N'SH')

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NULL)
	CREATE TABLE [Issue4160City]
	(
		[Code] NVarChar(4000)     NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(N'SD',N'SYDNEY'),
(N'SD',N'SUNDAY'),
(N'SH',N'SYDHIP')

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT DISTINCT
	(
		SELECT TOP (1)
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
	)
FROM
	[Issue4160Person] [pe]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4160Person]

