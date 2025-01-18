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
	0
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
	[Value] = 0

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestBool] [t1]

