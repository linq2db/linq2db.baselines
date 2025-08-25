BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[GuidValue] = ? AND [e].[GuidNullableValue] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

