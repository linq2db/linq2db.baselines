-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

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
		@Name
	)
END

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

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
		@Name
	)
END

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

