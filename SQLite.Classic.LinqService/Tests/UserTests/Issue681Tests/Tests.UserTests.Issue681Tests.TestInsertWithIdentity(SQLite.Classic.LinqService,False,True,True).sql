BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT last_insert_rowid()

