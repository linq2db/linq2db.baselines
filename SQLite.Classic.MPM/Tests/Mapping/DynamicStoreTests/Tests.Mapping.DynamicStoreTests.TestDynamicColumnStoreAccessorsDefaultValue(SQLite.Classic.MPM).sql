﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[DynamicColumnsTestTable] [t1]

