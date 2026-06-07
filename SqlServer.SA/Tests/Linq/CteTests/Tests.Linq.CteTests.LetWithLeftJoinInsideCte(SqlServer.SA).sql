-- SqlServer.SA SqlServer.2019
DECLARE @S1 NVarChar(50) -- String
SET     @S1 = N's1'

INSERT INTO [Projection1]
(
	[S1]
)
VALUES
(
	@S1
)

-- SqlServer.SA SqlServer.2019
DECLARE @S1 NVarChar(50) -- String
SET     @S1 = N's1'

INSERT INTO [Projection2]
(
	[S1]
)
VALUES
(
	@S1
)

-- SqlServer.SA SqlServer.2019

WITH [CTE_1] ([S1])
AS
(
	SELECT
		[projection2_1].[S1]
	FROM
		[Projection1] [t1]
			LEFT JOIN [Projection2] [projection2_1] ON [t1].[S1] = [projection2_1].[S1]
)
SELECT
	[t2].[S1]
FROM
	[CTE_1] [t2]

