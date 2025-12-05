-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [main].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

-- SQLite.MS SQLite

SELECT last_insert_rowid()

