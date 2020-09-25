BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [User]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

DROP TABLE [User]

