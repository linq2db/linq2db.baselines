BeforeExecute
-- SqlCe

CREATE TABLE [User]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [User]

