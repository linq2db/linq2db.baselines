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

SELECT
	[u].[city] as [City]
FROM
	[User] [u]

BeforeExecute
-- SqlCe

SELECT
	[u].[street] as [Street]
FROM
	[User] [u]

BeforeExecute
-- SqlCe

DROP TABLE [User]

