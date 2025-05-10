BeforeExecute
-- SqlCe
DECLARE @Guid1 UniqueIdentifier -- Guid
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (2)
	[x].[Id],
	[x].[NullableGuid]
FROM
	[TableWithGuid] [x]
WHERE
	CAST([x].[NullableGuid] AS NChar(36)) IS NULL AND [x].[Id] = @Guid1

