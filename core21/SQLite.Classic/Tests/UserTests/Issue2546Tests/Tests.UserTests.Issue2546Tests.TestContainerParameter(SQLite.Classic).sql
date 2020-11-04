﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2546Class]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2546Class] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue2546Class]
(
	[Id],
	[Value]
)
VALUES
(1,'Hello World')

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value2 NVarChar(11) -- String
SET     @Value2 = 'Hello World'

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[Issue2546Class] [x]
WHERE
	[x].[Value] = @Value2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2546Class]

