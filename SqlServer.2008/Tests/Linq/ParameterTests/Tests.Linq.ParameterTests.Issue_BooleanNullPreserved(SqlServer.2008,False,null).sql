-- SqlServer.2008

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

-- SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- SqlServer.2008

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 THEN 1
		WHEN [TestBool].[Value] = 1 THEN 0
		ELSE NULL
	END

-- SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- SqlServer.2008

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = NULL

-- SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

