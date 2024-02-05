﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TestFolder]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NULL)
	CREATE TABLE [TestFolder]
	(
		[Id]       UniqueIdentifier NOT NULL,
		[Label]    NVarChar(4000)       NULL,
		[ParentId] UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Guid1 UniqueIdentifier -- Guid
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

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
	@Guid1,
	[parent].[Label] + N'/' + [child].[Label]
FROM
	[CTE] [child]
		INNER JOIN [TestFolder] [parent] ON [child].[ParentId] = [parent].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TestFolder]

