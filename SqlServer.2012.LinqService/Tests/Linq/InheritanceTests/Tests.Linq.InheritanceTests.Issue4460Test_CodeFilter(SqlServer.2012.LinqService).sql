﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Base]', N'U') IS NOT NULL)
	DROP TABLE [Base]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Base]', N'U') IS NULL)
	CREATE TABLE [Base]
	(
		[Code] NVarChar(4000)     NULL,
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'Child'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jane'

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name]
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2012
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'Child2'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- SqlServer.2012

SELECT
	[e].[Code],
	[e].[Id],
	[e].[Age],
	[e].[Name]
FROM
	[Base] [e]
WHERE
	[e].[Code] <> N'Child' OR [e].[Code] IS NULL

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Base]', N'U') IS NOT NULL)
	DROP TABLE [Base]

