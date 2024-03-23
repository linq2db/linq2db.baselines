BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DateOnlyTable]
(
	[Date] Date NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Date VarChar(10) -- AnsiString
SET     @Date = '2021-01-01'

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

