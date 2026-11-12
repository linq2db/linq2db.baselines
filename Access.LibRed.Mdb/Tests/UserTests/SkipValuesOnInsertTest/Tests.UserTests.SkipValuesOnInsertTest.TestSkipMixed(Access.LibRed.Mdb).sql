-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age  -- Int32
SET     @Age = 20

INSERT INTO [PR_1598_Mixed_Table]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Mixed_Table] [t1]
SET
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Age  -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Mixed_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age  -- Int32
SET     @Age = 25
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[PR_1598_Mixed_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

