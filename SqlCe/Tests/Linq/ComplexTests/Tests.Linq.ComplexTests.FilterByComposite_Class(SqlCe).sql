BeforeExecute
-- SqlCe

DROP TABLE [User]

BeforeExecute
-- SqlCe

CREATE TABLE [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [User]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
SELECT 'Springwood','Freddy','Elm Street',13

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[u].[user_name] as [Name],
	[u].[city] as [City],
	[u].[street] as [Street],
	[u].[building_number] as [Building]
FROM
	[User] [u]
WHERE
	[u].[city] = 'Springwood' AND [u].[street] = 'Elm Street' AND
	[u].[building_number] = 13

BeforeExecute
-- SqlCe

DROP TABLE [User]

