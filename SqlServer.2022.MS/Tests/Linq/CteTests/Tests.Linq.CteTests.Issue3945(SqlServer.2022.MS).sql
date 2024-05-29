BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestFolder]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NULL)
	CREATE TABLE [TestFolder]
	(
		[Id]       UniqueIdentifier NOT NULL,
		[Label]    NVarChar(4000)       NULL,
		[ParentId] UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Guid1 UniqueIdentifier -- Guid
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

WITH [CTE] ([ParentId], [Label])
AS
(
	SELECT
		[c_1].[ParentId],
		[c_1].[Label]
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
	@Guid1,
	[parent].[Label] + N'/' + [child].[Label]
FROM
	[CTE] [child]
		INNER JOIN [TestFolder] [parent] ON [child].[ParentId] = [parent].[Id]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestFolder]

