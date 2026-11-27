-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
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

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertNulls] [t]
WHERE
	[t].[Id] = 1

