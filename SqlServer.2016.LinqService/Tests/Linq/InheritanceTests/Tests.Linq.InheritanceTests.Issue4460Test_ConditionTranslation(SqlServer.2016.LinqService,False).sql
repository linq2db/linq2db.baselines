﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Base]

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016
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
-- SqlServer.2016
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
-- SqlServer.2016

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
	CASE
		WHEN [e].[Code] = N'BaseChild' OR [e].[Code] = N'Child' OR [e].[Code] = N'Child2'
			THEN IIF([e].[Id] <> 0, 1, 0)
		WHEN [e].[Id] <> 0 THEN 1
		ELSE 0
	END = 1
ORDER BY
	[e].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Base]

