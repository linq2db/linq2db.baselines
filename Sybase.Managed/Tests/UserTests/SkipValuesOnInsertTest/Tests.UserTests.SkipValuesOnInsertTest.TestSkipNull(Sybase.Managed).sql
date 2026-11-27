-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO [SkipOnInsertNulls]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- Sybase.Managed Sybase
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertNulls] [t]
WHERE
	[t].[Id] = 1

