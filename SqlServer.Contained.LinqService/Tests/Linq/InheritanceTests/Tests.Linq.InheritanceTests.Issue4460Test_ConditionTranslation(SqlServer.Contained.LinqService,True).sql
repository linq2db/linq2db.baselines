﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Base]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

SELECT
	[e].[Code],
	[e].[Id],
	[e].[Name],
	[e].[IsMale],
	[e].[Age]
FROM
	[Base] [e]
WHERE
	[e].[Code] = N'Child2' OR
	[e].[Code] = N'Child' OR
	[e].[Code] = N'BaseChild' OR
	[e].[Id] = 0
ORDER BY
	[e].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Base]

