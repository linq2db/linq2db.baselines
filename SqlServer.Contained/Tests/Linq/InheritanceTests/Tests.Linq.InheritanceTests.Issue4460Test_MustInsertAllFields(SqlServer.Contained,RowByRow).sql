BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4460Table]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue4460Table]', N'U') IS NULL)
	CREATE TABLE [Issue4460Table]
	(
		[Id]      Int            NOT NULL,
		[Code]    NVarChar(4000)     NULL,
		[Name]    NVarChar(4000)     NULL,
		[Surname] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'GrandChild'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Tom'
DECLARE @Surname NVarChar(4000) -- String
SET     @Surname = N'Black'

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4460Table]

