-- SQLite.Classic SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [main].[QualifiedIdTable]
(
	[Value]
)
VALUES
(
	@Value
)

-- SQLite.Classic SQLite
SELECT
	last_insert_rowid()

