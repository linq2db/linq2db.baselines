﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SomeEntity]
(
	[Id]      INTEGER NOT NULL,
	[OtherId] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SomeEntity]
(
	[Id],
	[OtherId]
)
VALUES
(1,3)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SomeOtherEntity]
(
	[Id]       INTEGER       NOT NULL,
	[Name]     NVarChar(255)     NULL,
	[IsActual] Bit           NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[Name],
	[IsActual]
)
VALUES
(2,NULL,1)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[Id],
	[t].[OtherId],
	[a_Other].[IsActual]
FROM
	[SomeEntity] [t]
		LEFT JOIN [SomeOtherEntity] [a_Other] ON [t].[OtherId] = [a_Other].[Id]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SomeOtherEntity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SomeEntity]

