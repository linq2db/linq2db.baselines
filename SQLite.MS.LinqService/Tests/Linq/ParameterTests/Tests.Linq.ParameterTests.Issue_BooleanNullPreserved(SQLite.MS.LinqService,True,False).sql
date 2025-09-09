BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	1
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = NOT [TestBool].[Value]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = 1

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]
LIMIT 2

