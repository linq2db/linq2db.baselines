BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[not_null],
	[t1].[Value_1]
FROM
	[User] [t]
		LEFT JOIN (
			SELECT
				[a_Data].[Data] as [Value_1],
				1 as [not_null]
			FROM
				(
					SELECT 'Testing' AS Data
				) [a_Data]
		) [t1] ON 1=1

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [User]

