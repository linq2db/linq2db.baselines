﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[not_null],
	[t1].[Data_1]
FROM
	[User] [t]
		LEFT JOIN (
			SELECT
				[a_Data].[Data] as [Data_1],
				1 as [not_null]
			FROM
				(
					SELECT 'Testing' AS Data
				) [a_Data]
		) [t1] ON [t].[Id] = [t].[Id]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

