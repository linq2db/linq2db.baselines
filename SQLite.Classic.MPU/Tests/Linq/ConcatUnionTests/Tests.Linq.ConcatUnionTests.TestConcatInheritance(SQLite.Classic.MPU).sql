BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcatTest]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConcatTest]
(
	[EntityId] INTEGER       NOT NULL,
	[Discr]    INTEGER       NOT NULL,
	[Value]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [t3].[projection__set_id__] = 0 THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t3].[Discr] = 1 THEN 1
		ELSE 0
	END,
	[t3].[EntityId],
	[t3].[Discr],
	[t3].[Value_1]
FROM
	(
		SELECT
			[t1].[EntityId],
			[t1].[Discr],
			[t1].[Value] as [Value_1],
			CAST(0 AS INTEGER) as [projection__set_id__]
		FROM
			[ConcatTest] [t1]
		WHERE
			[t1].[Discr] <> 1
		UNION ALL
		SELECT
			[t2].[EntityId],
			[t2].[Discr],
			[t2].[Value] as [Value_1],
			CAST(1 AS INTEGER) as [projection__set_id__]
		FROM
			[ConcatTest] [t2]
		WHERE
			[t2].[Discr] = 1
	) [t3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConcatTest]

