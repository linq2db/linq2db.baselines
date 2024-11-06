BeforeExecute
-- SqlCe

DROP TABLE [Base]

BeforeExecute
-- SqlCe

CREATE TABLE [Base]
(
	[Code]   NVarChar(255)     NULL,
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[IsMale] Bit               NULL,
	[Age]    Int               NULL
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Bit -- Boolean
SET     @IsMale = 0

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[IsMale]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [e].[Code] = 'Child2' THEN 1
		ELSE 0
	END as [c1],
	[e].[Code],
	[e].[Id],
	[e].[Name],
	[e].[Age],
	CASE
		WHEN [e].[Code] = 'Child' THEN 1
		ELSE 0
	END as [c2],
	[e].[IsMale],
	CASE
		WHEN [e].[Code] = 'BaseChild' THEN 1
		ELSE 0
	END as [c3]
FROM
	[Base] [e]
WHERE
	[e].[Code] = 'BaseChild' OR
	[e].[Code] = 'Child' OR
	[e].[Code] = 'Child2' OR
	[e].[Id] <> 0
ORDER BY
	[e].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Base]

