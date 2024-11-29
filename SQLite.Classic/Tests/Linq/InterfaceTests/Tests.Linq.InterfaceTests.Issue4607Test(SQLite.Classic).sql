BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SomeTable]
(
	[ClassProp] Bit NOT NULL,
	[Interface] Bit NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [SomeTable]
(
	[ClassProp],
	[Interface]
)
VALUES
(
	1,
	0
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SomeTable]

