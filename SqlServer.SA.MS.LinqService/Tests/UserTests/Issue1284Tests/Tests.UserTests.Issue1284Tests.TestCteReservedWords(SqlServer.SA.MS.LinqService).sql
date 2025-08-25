BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

WITH [CTE_1] ([Obj_Operator])
AS
(
	SELECT
		[x].[LastName]
	FROM
		[Person] [x]
)
SELECT TOP (1)
	[t1].[Obj_Operator]
FROM
	[CTE_1] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT TOP (1)
	[person_1].[LastName]
FROM
	[Person] [person_1]

