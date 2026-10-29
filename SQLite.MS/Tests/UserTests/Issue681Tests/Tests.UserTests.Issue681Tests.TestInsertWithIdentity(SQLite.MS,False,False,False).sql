-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

-- SQLite.MS SQLite
SELECT last_insert_rowid()

