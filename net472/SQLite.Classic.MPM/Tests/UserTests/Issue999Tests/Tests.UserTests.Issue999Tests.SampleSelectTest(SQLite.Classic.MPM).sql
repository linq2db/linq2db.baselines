﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [User]
(
	[city]      NVarChar(255)     NULL,
	[user_name] NVarChar(255)     NULL,
	[street]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [User]

