-- SQLite.Classic SQLite

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(1)

-- SQLite.Classic SQLite

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(2)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

