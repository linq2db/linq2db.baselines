-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'a'

INSERT INTO [VOptRow]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = NULL

INSERT INTO [VOptRow]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlServer.2019
SELECT
	[x].[Id],
	[x].[Name]
FROM
	[VOptRow] [x]
WHERE
	[x].[Name] IS NOT NULL

