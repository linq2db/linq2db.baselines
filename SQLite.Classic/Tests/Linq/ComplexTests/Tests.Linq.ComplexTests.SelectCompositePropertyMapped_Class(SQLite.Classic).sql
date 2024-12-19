BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [User]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- SQLite.Classic SQLite

SELECT DISTINCT
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[User] [u]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

