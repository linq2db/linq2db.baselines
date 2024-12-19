﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NOT NULL)
	DROP TABLE [TestFolder]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NULL)
	CREATE TABLE [TestFolder]
	(
		[Id]       UniqueIdentifier NOT NULL,
		[Label]    NVarChar(4000)       NULL,
		[ParentId] UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.2008

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
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	[parent].[Label] + N'/' + [child].[Label]
FROM
	[CTE] [child]
		INNER JOIN [TestFolder] [parent] ON [child].[ParentId] = [parent].[Id]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestFolder]', N'U') IS NOT NULL)
	DROP TABLE [TestFolder]

