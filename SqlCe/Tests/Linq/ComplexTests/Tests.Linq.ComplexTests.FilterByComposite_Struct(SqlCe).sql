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
DECLARE @City NVarChar(10) -- String
SET     @City = 'Springwood'
DECLARE @Street NVarChar(10) -- String
SET     @Street = 'Elm Street'
DECLARE @Building Int -- Int32
SET     @Building = 13

SELECT TOP (2)
	[u].[user_name] as [Name],
	[u].[city] as [City],
	[u].[street] as [Street],
	[u].[building_number] as [Building]
FROM
	[UserStruct] [u]
WHERE
	[u].[city] = @City AND [u].[street] = @Street AND [u].[building_number] = @Building

BeforeExecute
-- SqlCe

DROP TABLE [UserStruct]

