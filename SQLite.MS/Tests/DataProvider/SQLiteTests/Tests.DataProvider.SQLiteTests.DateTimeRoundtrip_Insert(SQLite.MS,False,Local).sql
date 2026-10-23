-- SQLite.MS SQLite
DECLARE @dt  -- DateTime
SET     @dt = '2040-02-29 11:12:13.456'

INSERT INTO [DateTimeTable]
(
	[DateTime]
)
VALUES
(
	@dt
)

-- SQLite.MS SQLite
SELECT
	[t1].[DateTime]
FROM
	[DateTimeTable] [t1]
LIMIT 2

