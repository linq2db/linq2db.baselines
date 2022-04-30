BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	BINARY_CHECKSUM([p].[PersonID], [p].[FirstName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

