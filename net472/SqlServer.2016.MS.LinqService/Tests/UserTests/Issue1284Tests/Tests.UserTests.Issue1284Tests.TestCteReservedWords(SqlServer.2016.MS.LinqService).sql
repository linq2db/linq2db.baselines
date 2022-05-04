BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	[x].[LastName]
FROM
	[Person] [x]

