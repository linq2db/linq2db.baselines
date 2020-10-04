﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [ConcatTest]
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
	[t1].[EntityId],
	[t1].[Discr],
	[t1].[Value]
FROM
	[ConcatTest] [t1]
WHERE
	[t1].[Discr] <> 1
UNION ALL
SELECT
	[t2].[EntityId],
	[t2].[Discr],
	[t2].[Value]
FROM
	[ConcatTest] [t2]
WHERE
	[t2].[Discr] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [ConcatTest]

