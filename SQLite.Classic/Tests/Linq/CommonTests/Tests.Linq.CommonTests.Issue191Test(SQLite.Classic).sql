BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[FirstName] NVarChar(255)     NULL,
	[Status]    INTEGER           NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[user_1].[FirstName],
	[user_1].[Status]
FROM
	[User] [user_1]
WHERE
	[user_1].[Status] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [User]

