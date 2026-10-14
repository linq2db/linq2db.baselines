-- SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p
	) [p]

