-- SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 5
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'a'

INSERT INTO [SourceSchemaRow]
(
	[Id],
	[Value],
	[Name]
)
VALUES
(
	@Id,
	@Value,
	@Name
)

-- SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

