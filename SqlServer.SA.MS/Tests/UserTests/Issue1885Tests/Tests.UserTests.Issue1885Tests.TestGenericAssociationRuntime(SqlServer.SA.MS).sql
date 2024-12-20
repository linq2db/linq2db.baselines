BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[cond],
	[t1].[Value_1]
FROM
	[User] [t]
		LEFT JOIN (
			SELECT
				[a_Data].[Data] as [Value_1],
				1 as [cond]
			FROM
				(
					SELECT 'Testing' AS Data
				) [a_Data]
		) [t1] ON 1=1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [User]

