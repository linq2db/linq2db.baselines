BeforeExecute
-- SqlServer.2008
DECLARE @maxVersion Int -- Int32
SET     @maxVersion = 1

SELECT
	[u].[Id]
FROM
	[Users] [u]
WHERE
	[u].[Version] < @maxVersion

