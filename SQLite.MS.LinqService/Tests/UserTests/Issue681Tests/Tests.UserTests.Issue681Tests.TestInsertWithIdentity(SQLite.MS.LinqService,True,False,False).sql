BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT last_insert_rowid()

