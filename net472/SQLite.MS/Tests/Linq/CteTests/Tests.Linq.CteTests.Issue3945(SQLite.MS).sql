BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestFolder]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestFolder]
(
	[Id]       Guid          NOT NULL,
	[Label]    NVarChar(255)     NULL,
	[ParentId] Guid              NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Guid
SET     @Id = X'1EAEC49C269C4B4895432E750A3A7B8D'

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
	[parent].[Label] || '/' || [child].[Label]
FROM
	[CTE] [child]
		INNER JOIN [TestFolder] [parent] ON [child].[ParentId] = [parent].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestFolder]

