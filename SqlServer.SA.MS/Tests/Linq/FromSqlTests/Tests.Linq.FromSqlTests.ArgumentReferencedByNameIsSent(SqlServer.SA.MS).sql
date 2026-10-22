-- SqlServer.SA.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p
	) [p]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @byName Int -- Int32
SET     @byName = 2

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE PersonID = @p OR PersonID = @byName
	) [p]
ORDER BY
	[p].[PersonID]

