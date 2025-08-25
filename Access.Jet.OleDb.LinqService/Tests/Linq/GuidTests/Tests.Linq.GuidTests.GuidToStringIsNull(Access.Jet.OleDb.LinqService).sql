BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Guid1 Guid
SET     @Guid1 = {guid {bc7b663d-0fde-4327-8f92-5d8cc3a11d11}}

SELECT TOP 2
	[x].[Id],
	[x].[NullableGuid]
FROM
	[TableWithGuid] [x]
WHERE
	[x].[NullableGuid] IS NULL AND [x].[Id] = @Guid1

