﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [User]
(
	[city]            NVarChar(4000)     NULL,
	[user_name]       NVarChar(4000)     NULL,
	[street]          NVarChar(4000)     NULL,
	[building_number] Int            NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [User]

