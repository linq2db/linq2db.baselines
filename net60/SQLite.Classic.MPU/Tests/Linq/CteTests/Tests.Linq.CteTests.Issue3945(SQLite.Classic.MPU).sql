BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestFolder]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestFolder]
(
	[Id]       Guid          NOT NULL,
	[Label]    NVarChar(255)     NULL,
	[ParentId] Guid              NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = X'3CCB1ADC06FE9342905C2A02DE952DD7'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestFolder]

