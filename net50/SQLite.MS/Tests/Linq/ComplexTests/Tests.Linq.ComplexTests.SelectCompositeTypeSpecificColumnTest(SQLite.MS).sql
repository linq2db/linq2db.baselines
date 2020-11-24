BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [User]

