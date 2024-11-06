BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Base]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Base]', N'U') IS NULL)
	CREATE TABLE [Base]
	(
		[Code]   NVarChar(4000)     NULL,
		[Id]     Int            NOT NULL,
		[Name]   NVarChar(4000)     NULL,
		[IsMale] Bit                NULL,
		[Age]    Int                NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'Child'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jane'
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'Child2'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF([e].[Code] = N'Child2', 1, 0),
	[e].[Code],
	[e].[Id],
	[e].[Name],
	[e].[Age],
	IIF([e].[Code] = N'Child', 1, 0),
	[e].[IsMale],
	IIF([e].[Code] = N'BaseChild', 1, 0)
FROM
	[Base] [e]
WHERE
	[e].[Code] = N'BaseChild' OR
	[e].[Code] = N'Child' OR
	[e].[Code] = N'Child2' OR
	[e].[Id] <> 0
ORDER BY
	[e].[Id]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Base]

