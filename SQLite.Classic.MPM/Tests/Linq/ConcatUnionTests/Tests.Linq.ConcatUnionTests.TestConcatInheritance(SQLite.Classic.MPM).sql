BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcatTest]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConcatTest]
(
	[EntityId] INTEGER       NOT NULL,
	[Discr]    INTEGER       NOT NULL,
	[Value]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [ConcatTest]
(
	[EntityId],
	[Discr],
	[Value]
)
VALUES
(1,0,'VBase1'),
(2,0,'VBase2'),
(3,0,'VBase3'),
(10,1,'Derived1'),
(20,1,'Derived2'),
(30,1,'Derived3')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	0,
	[t1].[Discr],
	[t1].[EntityId],
	[t1].[Value]
FROM
	[ConcatTest] [t1]
WHERE
	[t1].[Discr] <> 1
UNION ALL
SELECT
	1,
	[t2].[Discr],
	[t2].[EntityId],
	[t2].[Value]
FROM
	[ConcatTest] [t2]
WHERE
	[t2].[Discr] = 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcatTest]

