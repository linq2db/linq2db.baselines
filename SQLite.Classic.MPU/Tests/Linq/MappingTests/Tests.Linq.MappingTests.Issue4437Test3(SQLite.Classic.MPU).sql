BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [test4437]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test4437]
(
	[some_column] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [test4437]
(
	[some_column]
)
VALUES
('value')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

select some_column as SomeColumn from test4437

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [test4437]

