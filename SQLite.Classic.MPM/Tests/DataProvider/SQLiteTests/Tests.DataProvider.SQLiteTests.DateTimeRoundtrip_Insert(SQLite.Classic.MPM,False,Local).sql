-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dt VarChar(23) -- AnsiString
SET     @dt = '2040-02-29 11:12:13.456'

INSERT INTO [DateTimeTable]
(
	[DateTime]
)
VALUES
(
	@dt
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[DateTime]
FROM
	[DateTimeTable] [t1]
LIMIT 2

