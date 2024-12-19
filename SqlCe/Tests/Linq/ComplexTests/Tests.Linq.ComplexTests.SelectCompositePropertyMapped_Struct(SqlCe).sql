BeforeExecute
-- SqlCe

DROP TABLE [UserStruct]

BeforeExecute
-- SqlCe

CREATE TABLE [UserStruct]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [UserStruct]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
SELECT 'Springwood','Freddy','Elm Street',13

BeforeExecute
-- SqlCe

SELECT DISTINCT TOP (2)
	[u].[city] as [City],
	[u].[street] as [Street],
	[u].[building_number] as [Building]
FROM
	[UserStruct] [u]

BeforeExecute
-- SqlCe

DROP TABLE [UserStruct]

