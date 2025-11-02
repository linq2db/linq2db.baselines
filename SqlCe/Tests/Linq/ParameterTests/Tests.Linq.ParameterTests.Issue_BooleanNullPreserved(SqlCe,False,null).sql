-- SqlCe

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	NULL
)

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestBool] [t1]

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

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestBool] [t1]

-- SqlCe

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = NULL

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TestBool] [t1]

