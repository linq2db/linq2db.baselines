BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [aa]
(
	[bb] INTEGER       NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY ([bb])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'
DECLARE @bb  -- Int32
SET     @bb = 99

INSERT INTO [aa]
(
	[cc],
	[bb]
)
VALUES
(
	@cc,
	@bb
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[cc],
	[t1].[bb]
FROM
	[aa] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [aa]

