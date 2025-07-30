BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

