BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue5056Table]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	2
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue5056Table] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[Issue5056Table]
SET
	[Id] = 1,
	[Value] = [Issue5056Table].[Value] + 5

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue5056Table] [t1]
LIMIT 2

