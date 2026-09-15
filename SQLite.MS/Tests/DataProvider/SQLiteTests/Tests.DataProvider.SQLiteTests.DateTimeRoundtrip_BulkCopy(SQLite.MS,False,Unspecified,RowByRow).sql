-- SQLite.MS SQLite
DECLARE @DateTime  -- DateTime
SET     @DateTime = '2040-02-29 11:12:13.456'

INSERT INTO [DateTimeTable]
(
	[DateTime]
)
VALUES
(
	@DateTime
)

-- SQLite.MS SQLite
SELECT
	[t1].[DateTime]
FROM
	[DateTimeTable] [t1]
LIMIT 2

