BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test4437]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test4437]
(
	[some_column] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test4437]
(
	[some_column]
)
VALUES
('value')

BeforeExecute
-- SQLite.MS SQLite

select some_column as SomeColumn from test4437

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test4437]

