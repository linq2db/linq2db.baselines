BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [DynamicColumnsTestTable]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'me_default'

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

DROP TABLE [DynamicColumnsTestTable]

