BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [xxPerson]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [xxPerson]
(
	[FirstName]  NVarChar(255)  NOT NULL,
	[PersonID]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[LastName]   NVarChar(255)  NOT NULL,
	[MiddleName] NVarChar(255)      NULL,
	[Gender]     Char(1)        NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [xxPerson]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

DELETE FROM
	[xxPerson]
WHERE
	[xxPerson].[PersonID] = @ID

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [xxPerson]

