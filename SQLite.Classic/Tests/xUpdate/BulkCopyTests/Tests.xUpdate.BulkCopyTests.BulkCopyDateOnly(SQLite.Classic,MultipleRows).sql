BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DateOnlyTable]
(
	[Date] Date NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
('2021-01-01')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

