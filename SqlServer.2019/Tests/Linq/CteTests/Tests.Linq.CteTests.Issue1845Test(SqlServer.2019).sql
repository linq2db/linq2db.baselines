-- SqlServer.2019

WITH [CTE_1] ([FirstName], [LastName])
AS
(
	SELECT
		[o].[FirstName],
		[o].[LastName]
	FROM
		[Person] [o]
),
[CTE_2] ([Value1], [Value2])
AS
(
	SELECT
		[t1].[FirstName],
		[t1].[LastName]
	FROM
		[CTE_1] [t1]
	UNION
	SELECT
		[t2].[Value1],
		[t2].[Value2]
	FROM
		(VALUES
			(N'Somebody',N'Unimportant')
		) [t2]([Value1], [Value2])
)
SELECT
	[t3].[Value1],
	[t3].[Value2]
FROM
	[CTE_2] [t3]

