-- SQLite.MS SQLite
DECLARE @arr Integer -- Int32
SET     @arr = 3

INSERT INTO [ArrayLengthTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	@arr
)

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ArrayLengthTable] [t1]
LIMIT 2

