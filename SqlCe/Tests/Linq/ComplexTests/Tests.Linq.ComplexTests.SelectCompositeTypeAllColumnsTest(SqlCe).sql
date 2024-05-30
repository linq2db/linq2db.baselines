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

SELECT
	[t1].[user_name] as [Name],
	[t1].[city] as [City],
	[t1].[street] as [Street],
	[t1].[building_number] as [Building]
FROM
	[User] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [User]

