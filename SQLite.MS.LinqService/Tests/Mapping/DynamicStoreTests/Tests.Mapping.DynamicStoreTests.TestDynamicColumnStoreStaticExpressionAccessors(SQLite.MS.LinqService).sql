﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DynamicColumnsTestTable]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'test_name'

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
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[DynamicColumnsTestTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

