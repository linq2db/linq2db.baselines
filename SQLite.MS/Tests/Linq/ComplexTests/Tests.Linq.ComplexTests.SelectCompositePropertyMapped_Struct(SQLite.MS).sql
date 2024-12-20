BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserStruct]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [UserStruct]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [UserStruct]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- SQLite.MS SQLite

SELECT DISTINCT
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserStruct]

