BeforeExecute
-- SqlServer.2005

CREATE TABLE [PR_1598_Insert_Table_Cache]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Age]  Int                NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Name] = @Name
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

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Name] = @Name
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

COMMIT

BeforeExecute
-- SqlServer.2005

DROP TABLE [PR_1598_Insert_Table_Cache]

