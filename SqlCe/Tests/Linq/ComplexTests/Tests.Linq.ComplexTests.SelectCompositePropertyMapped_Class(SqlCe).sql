﻿BeforeExecute
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

SELECT DISTINCT TOP (2)
	[u].[city] as [City],
	[u].[street] as [Street],
	[u].[building_number] as [Building]
FROM
	[User] [u]

BeforeExecute
-- SqlCe

DROP TABLE [User]

