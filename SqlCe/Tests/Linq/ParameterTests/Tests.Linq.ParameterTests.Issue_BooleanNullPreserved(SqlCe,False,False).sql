﻿BeforeExecute
-- SqlCe

DROP TABLE [TestBool]

BeforeExecute
-- SqlCe

CREATE TABLE [TestBool]
(
	[Id]    Int NOT NULL,
	[Value] Bit     NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlCe

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 THEN 1
		WHEN [TestBool].[Value] = 1 THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlCe

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = 1

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TestBool]

