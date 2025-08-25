BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name_1 UniVarChar(4) -- String
SET     @Name_1 = 'John'

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[Name] = @Name
FROM
	[PR_1598_Insert_Table_Cache] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [PR_1598_Insert_Table_Cache]
	(
		[Id],
		[Name]
	)
	VALUES
	(
		@Id,
		@Name_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name_1 UniVarChar(4) -- String
SET     @Name_1 = 'John'

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[Name] = @Name
FROM
	[PR_1598_Insert_Table_Cache] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [PR_1598_Insert_Table_Cache]
	(
		[Id],
		[Name]
	)
	VALUES
	(
		@Id,
		@Name_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

