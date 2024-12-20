BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ComplexPredicate]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ComplexPredicate]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(1,NULL),
(2,'other'),
(3,'123'),
(4,'test'),
(5,'1')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = '1' OR [r].[Value] = 'test' AND ([r].[Value] <> '1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ComplexPredicate]

