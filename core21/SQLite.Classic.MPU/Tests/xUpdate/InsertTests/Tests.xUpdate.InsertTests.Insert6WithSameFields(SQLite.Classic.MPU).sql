﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [InsertTable]
(
	[Id]         INTEGER   NOT NULL,
	[CreatedOn]  DateTime2     NULL,
	[ModifiedOn] DateTime2     NULL,

	CONSTRAINT [PK_InsertTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InsertTable]
(
	[Id],
	[CreatedOn],
	[ModifiedOn]
)
VALUES
(1,'2020-02-29 17:54:55.123','2020-02-29 17:54:55.123'),
(2,'2020-02-29 17:54:55.123','2020-02-29 17:54:55.123')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InsertTable]
(
	[Id],
	[CreatedOn],
	[ModifiedOn]
)
SELECT
	[c_1].[Id] + 10,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
FROM
	[InsertTable] [c_1]
WHERE
	[c_1].[Id] > 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [InsertTable]

