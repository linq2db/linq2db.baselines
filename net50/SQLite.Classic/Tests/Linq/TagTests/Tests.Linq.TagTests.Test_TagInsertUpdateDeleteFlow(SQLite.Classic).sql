BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TagTestTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TagTestTable]
(
	[ID]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 100
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'name'

/* Wonderful tag */
INSERT INTO [TagTestTable]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'updated'

/* Wonderful tag */
UPDATE
	[TagTestTable]
SET
	[Name] = @Name
WHERE
	[TagTestTable].[ID] = 100

BeforeExecute
-- SQLite.Classic SQLite

/* Wonderful tag */
DELETE FROM
	[TagTestTable]
WHERE
	[TagTestTable].[ID] = 100

BeforeExecute
-- SQLite.Classic SQLite

/* Wonderful tag */
DELETE FROM [TagTestTable]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TagTestTable]

