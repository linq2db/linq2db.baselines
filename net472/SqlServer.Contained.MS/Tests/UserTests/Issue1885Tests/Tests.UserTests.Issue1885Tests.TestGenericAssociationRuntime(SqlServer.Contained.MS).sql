BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[a_Data].[Value_1],
	[a_Data].[is_empty]
FROM
	[User] [t]
		LEFT JOIN (
			SELECT
				[x].[Data] as [Value_1],
				1 as [is_empty]
			FROM
				(
					SELECT 'Testing' AS Data
				) [x]
		) [a_Data] ON [t].[Id] = [t].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [User]

