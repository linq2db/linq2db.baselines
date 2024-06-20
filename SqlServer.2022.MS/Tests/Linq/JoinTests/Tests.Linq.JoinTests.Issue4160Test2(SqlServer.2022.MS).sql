﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NULL)
	CREATE TABLE [Issue4160Person]
	(
		[Code] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(N'SD'),
(N'SD'),
(N'SH')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NULL)
	CREATE TABLE [Issue4160City]
	(
		[Code] NVarChar(4000)     NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

SELECT DISTINCT
	[cc_1].[Name]
FROM
	[Issue4160Person] [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name]
			FROM
				[Issue4160City] [cc]
			WHERE
				([cc].[Code] = [t1].[Code] OR [cc].[Code] IS NULL AND [t1].[Code] IS NULL)
		) [cc_1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4160Person]

