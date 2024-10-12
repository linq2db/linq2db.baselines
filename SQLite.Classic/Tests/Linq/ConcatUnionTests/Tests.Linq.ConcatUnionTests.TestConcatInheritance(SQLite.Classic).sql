BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcatTest]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConcatTest]
(
	[EntityId] INTEGER       NOT NULL,
	[Discr]    INTEGER       NOT NULL,
	[Value]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[t3].[EntityId],
	CASE
		WHEN [t3].[Discr] = 1 THEN 1
		ELSE 0
	END,
	[t3].[Discr],
	[t3].[Value_1],
	[t3].[c1],
	[t3].[c2],
	[t3].[c3]
FROM
	(
		SELECT
			[t1].[EntityId],
			[t1].[Discr],
			[t1].[Value] as [Value_1],
			NULL as [c1],
			NULL as [c2],
			NULL as [c3]
		FROM
			[ConcatTest] [t1]
		WHERE
			[t1].[Discr] <> 1
		UNION ALL
		SELECT
			NULL as [EntityId],
			NULL as [Discr],
			NULL as [Value_1],
			[t2].[EntityId] as [c1],
			[t2].[Discr] as [c2],
			[t2].[Value] as [c3]
		FROM
			[ConcatTest] [t2]
		WHERE
			[t2].[Discr] = 1
	) [t3]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcatTest]

