﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [aa]
(
	[bb] INTEGER       NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY ([bb])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @bb  -- Int32
SET     @bb = 99
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO [aa]
(
	[bb],
	[cc]
)
VALUES
(
	@bb,
	@cc
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [aa]

