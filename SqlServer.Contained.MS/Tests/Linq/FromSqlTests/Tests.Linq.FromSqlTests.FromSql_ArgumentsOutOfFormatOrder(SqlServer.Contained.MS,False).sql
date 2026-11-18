-- SqlServer.Contained.MS SqlServer.2025
DECLARE @p NVarChar(4000) -- String
SET     @p = N'X'
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p_1 AND LastName <> @p
	) [p]

