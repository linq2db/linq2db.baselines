﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DynamicColumnsTestTable]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Name NVarChar(12) -- String
SET     @Name = 'accessor_def'

INSERT INTO [DynamicColumnsTestTable]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[DynamicColumnsTestTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

