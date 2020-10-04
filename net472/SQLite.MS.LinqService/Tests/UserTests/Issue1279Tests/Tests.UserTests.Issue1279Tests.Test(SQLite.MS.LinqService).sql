BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1279Table]
(
	[Id]      INTEGER   NOT NULL PRIMARY KEY AUTOINCREMENT,
	[CharFld] NChar(1)  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @CharFld NChar(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [Issue1279Table]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1279Table]

