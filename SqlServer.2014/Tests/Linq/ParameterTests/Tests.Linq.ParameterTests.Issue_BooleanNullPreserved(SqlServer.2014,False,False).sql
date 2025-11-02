-- SqlServer.2014

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

-- SqlServer.2014

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- SqlServer.2014

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 THEN 1
		WHEN [TestBool].[Value] = 1 THEN 0
		ELSE NULL
	END

-- SqlServer.2014

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- SqlServer.2014

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = 1

-- SqlServer.2014

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

