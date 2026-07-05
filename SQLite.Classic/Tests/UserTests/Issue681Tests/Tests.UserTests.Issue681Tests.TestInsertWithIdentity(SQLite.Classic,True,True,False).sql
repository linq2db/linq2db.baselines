-- SQLite.Classic SQLite
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
;
SELECT
	last_insert_rowid()

