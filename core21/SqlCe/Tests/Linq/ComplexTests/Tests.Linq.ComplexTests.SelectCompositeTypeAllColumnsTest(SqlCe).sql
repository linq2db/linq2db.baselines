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
	[t1].[city],
	[t1].[user_name],
	[t1].[street],
	[t1].[building_number]
FROM
	[User] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [User]

