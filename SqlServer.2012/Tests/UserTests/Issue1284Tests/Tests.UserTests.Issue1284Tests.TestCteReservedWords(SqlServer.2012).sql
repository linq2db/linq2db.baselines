-- SqlServer.2012

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

-- SqlServer.2012

SELECT TOP (1)
	[person_1].[LastName]
FROM
	[Person] [person_1]

