BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NOT NULL)
	DROP TABLE [TestFolder]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NULL)
	CREATE TABLE [TestFolder]
	(
		[Id]       UniqueIdentifier NOT NULL,
		[Label]    NVarChar(4000)       NULL,
		[ParentId] UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id UniqueIdentifier -- Guid
SET     @Id = 'b23479c6-4465-40b6-ac3a-c18c4311d83b'

WITH [CTE] ([Id], [Label], [ParentId])
AS
(
	SELECT
		[c_1].[Id],
		[c_1].[Label],
		[c_1].[ParentId]
	FROM
		[TestFolder] [c_1]
	WHERE
		[c_1].[ParentId] IS NOT NULL
)
INSERT INTO [TestFolder]
(
	[Id],
	[Label]
)
SELECT
	@Id,
	[parent].[Label] + N'/' + [child].[Label]
FROM
	[CTE] [child]
		INNER JOIN [TestFolder] [parent] ON [child].[ParentId] = [parent].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NOT NULL)
	DROP TABLE [TestFolder]

