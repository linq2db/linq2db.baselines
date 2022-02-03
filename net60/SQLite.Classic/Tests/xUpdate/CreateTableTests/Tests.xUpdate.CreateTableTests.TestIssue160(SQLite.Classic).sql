BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [aa]
(
	[bb] INTEGER       NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY ([bb])
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[t1].[cc],
	[t1].[bb]
FROM
	[aa] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [aa]

