BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

WITH [CTE_1] ([Value1], [Value2])
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
		[t1].[Value1],
		[t1].[Value2]
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

