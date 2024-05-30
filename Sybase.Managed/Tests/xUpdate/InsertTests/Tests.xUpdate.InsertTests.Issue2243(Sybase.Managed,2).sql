BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_insert_or_replace') IS NOT NULL)
	DROP TABLE [test_insert_or_replace]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_insert_or_replace') IS NULL)
	EXECUTE('
		CREATE TABLE [test_insert_or_replace]
		(
			[id]         Int           NOT NULL,
			[name]       NVarChar(255)     NULL,
			[created_by] NVarChar(255)     NULL,
			[updated_by] NVarChar(255)     NULL,

			CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy UniVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name_1 UniVarChar(5) -- String
SET     @Name_1 = 'Test1'
DECLARE @CreatedBy UniVarChar(10) -- String
SET     @CreatedBy = 'TEST_USER2'

UPDATE
	[test_insert_or_replace]
SET
	[name] = @Name,
	[updated_by] = @UpdatedBy
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [test_insert_or_replace]
	(
		[id],
		[name],
		[created_by]
	)
	VALUES
	(
		@Id,
		@Name_1,
		@CreatedBy
	)
END

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy UniVarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name_1 UniVarChar(5) -- String
SET     @Name_1 = 'Test2'
DECLARE @CreatedBy UniVarChar(10) -- String
SET     @CreatedBy = 'TEST_USER2'

UPDATE
	[test_insert_or_replace]
SET
	[name] = @Name,
	[updated_by] = @UpdatedBy
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [test_insert_or_replace]
	(
		[id],
		[name],
		[created_by]
	)
	VALUES
	(
		@Id,
		@Name_1,
		@CreatedBy
	)
END

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_insert_or_replace') IS NOT NULL)
	DROP TABLE [test_insert_or_replace]

