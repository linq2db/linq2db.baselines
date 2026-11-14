-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = 'Female'

INSERT INTO [PR_1598_Update_Enum_Table]
(
	[Id],
	[Name],
	[Age],
	[Gender]
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age  -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age,
	[t1].[Gender] = @Gender
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

