BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Base]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Base]', N'U') IS NULL)
	CREATE TABLE [Base]
	(
		[Code] NVarChar(4000)     NULL,
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	IIF([e].[Code] = N'Child2', 1, 0),
	[e].[Code],
	[e].[Id],
	[e].[Age],
	IIF([e].[Code] = N'Child', 1, 0),
	[e].[Name]
FROM
	[Base] [e]
WHERE
	[e].[Code] <> N'Child' OR [e].[Code] IS NULL

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Base]

