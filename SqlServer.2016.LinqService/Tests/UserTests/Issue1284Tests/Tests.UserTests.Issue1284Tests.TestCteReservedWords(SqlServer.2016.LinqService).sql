BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

SELECT TOP (1)
	[person_1].[LastName]
FROM
	[Person] [person_1]

