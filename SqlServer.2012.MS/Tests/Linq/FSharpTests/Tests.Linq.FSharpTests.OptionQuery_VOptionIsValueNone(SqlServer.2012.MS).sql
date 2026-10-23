-- SqlServer.2012.MS SqlServer.2012
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

-- SqlServer.2012.MS SqlServer.2012
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

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[x].[Id],
	[x].[Name]
FROM
	[VOptRow] [x]
WHERE
	[x].[Name] IS NULL

