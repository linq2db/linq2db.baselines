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
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SqlCe

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SqlCe

DROP TABLE [User]

