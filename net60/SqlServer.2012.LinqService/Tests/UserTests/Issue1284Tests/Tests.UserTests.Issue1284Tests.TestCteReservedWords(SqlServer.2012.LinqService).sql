BeforeExecute
-- SqlServer.2012

WITH [CTE_1] ([Operator])
AS
(
	SELECT
		[x].[LastName]
	FROM
		[Person] [x]
)
SELECT TOP (1)
	[t1].[Operator]
FROM
	[CTE_1] [t1]

BeforeExecute
-- SqlServer.2012

SELECT TOP (1)
	[x].[LastName]
FROM
	[Person] [x]

