BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DateOnlyTable]
(
	[Date] Date NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Date  -- Date
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
-- SQLite.MS SQLite

SELECT
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

