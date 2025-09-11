BeforeExecute
-- SqlServer.2022 (asynchronously)

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
-- SqlServer.2022 (asynchronously)

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

UPDATE
	[TestBool]
SET
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 THEN 1
		WHEN [TestBool].[Value] = 1 THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = 0

BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

