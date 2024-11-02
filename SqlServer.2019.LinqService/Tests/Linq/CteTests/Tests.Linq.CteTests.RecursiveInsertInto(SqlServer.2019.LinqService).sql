BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [HierarchyTree]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[HierarchyTree]', N'U') IS NULL)
	CREATE TABLE [HierarchyTree]
	(
		[Id]       Int NOT NULL,
		[ParentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ParentId Int -- Int32
SET     @ParentId = NULL

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @ParentId Int -- Int32
SET     @ParentId = NULL

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @ParentId Int -- Int32
SET     @ParentId = 1

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @ParentId Int -- Int32
SET     @ParentId = 1

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @ParentId Int -- Int32
SET     @ParentId = 2

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 22
DECLARE @ParentId Int -- Int32
SET     @ParentId = 2

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @ParentId Int -- Int32
SET     @ParentId = 10

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @ParentId Int -- Int32
SET     @ParentId = 10

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 102
DECLARE @ParentId Int -- Int32
SET     @ParentId = 10

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 110
DECLARE @ParentId Int -- Int32
SET     @ParentId = 11

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 111
DECLARE @ParentId Int -- Int32
SET     @ParentId = 11

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 112
DECLARE @ParentId Int -- Int32
SET     @ParentId = 11

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 200
DECLARE @ParentId Int -- Int32
SET     @ParentId = 20

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 201
DECLARE @ParentId Int -- Int32
SET     @ParentId = 20

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 202
DECLARE @ParentId Int -- Int32
SET     @ParentId = 20

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 210
DECLARE @ParentId Int -- Int32
SET     @ParentId = 21

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 211
DECLARE @ParentId Int -- Int32
SET     @ParentId = 21

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 212
DECLARE @ParentId Int -- Int32
SET     @ParentId = 21

INSERT INTO [HierarchyTree]
(
	[Id],
	[ParentId]
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [HierarchyData]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[HierarchyData]', N'U') IS NULL)
	CREATE TABLE [HierarchyData]
	(
		[Id]    Int NOT NULL,
		[Level] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019

WITH [CTE_1] ([Id])
AS
(
	SELECT
		[t].[Id]
	FROM
		[HierarchyTree] [t]
	WHERE
		[t].[ParentId] IS NULL
),
[CTE_2] ([ParentId], [Id])
AS
(
	SELECT
		[t1].[ParentId],
		[t1].[Id]
	FROM
		[HierarchyTree] [t1]
),
[hierarchyDown] ([Level_1], [Id])
AS
(
	SELECT
		CAST(0 AS Int),
		[t2].[Id]
	FROM
		[CTE_1] [t2]
	UNION ALL
	SELECT
		[t3].[Level_1] + 1,
		[t_1].[Id]
	FROM
		[hierarchyDown] [t3]
			INNER JOIN [CTE_2] [t_1] ON [t_1].[ParentId] = [t3].[Id]
)
INSERT INTO [HierarchyData]
(
	[Id],
	[Level]
)
SELECT
	[t4].[Id],
	[t4].[Level_1]
FROM
	[hierarchyDown] [t4]

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Level]
FROM
	[HierarchyData] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [HierarchyData]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [HierarchyTree]

