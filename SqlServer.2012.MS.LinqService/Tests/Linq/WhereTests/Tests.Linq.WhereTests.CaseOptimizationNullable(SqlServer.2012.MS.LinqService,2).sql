BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @filterValue Int -- Int32
SET     @filterValue = 2

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[Id] = @filterValue

