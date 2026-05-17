-- SqlServer.2022.MS SqlServer.2022
DECLARE @maxVersion Int -- Int32
SET     @maxVersion = 1

SELECT
	[u].[Id]
FROM
	[Users] [u]
WHERE
	[u].[Version] < @maxVersion

