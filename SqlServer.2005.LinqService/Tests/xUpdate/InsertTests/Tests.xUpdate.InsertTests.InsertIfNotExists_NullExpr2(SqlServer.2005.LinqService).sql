BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_insert_or_replace]', N'U') IS NOT NULL)
	DROP TABLE [test_insert_or_replace]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_insert_or_replace]', N'U') IS NULL)
	CREATE TABLE [test_insert_or_replace]
	(
		[id]         Int            NOT NULL,
		[name]       NVarChar(4000)     NULL,
		[created_by] NVarChar(4000)     NULL,
		[updated_by] NVarChar(4000)     NULL,

		CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'test'

IF NOT EXISTS(
	SELECT 1 
	FROM
		[test_insert_or_replace] [t1]
	WHERE
		[t1].[id] = @Id
)
BEGIN
	INSERT INTO [test_insert_or_replace]
	(
		[id],
		[name]
	)
	VALUES
	(
		@Id_1,
		@Name
	)
END

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'test'

IF NOT EXISTS(
	SELECT 1 
	FROM
		[test_insert_or_replace] [t1]
	WHERE
		[t1].[id] = @Id
)
BEGIN
	INSERT INTO [test_insert_or_replace]
	(
		[id],
		[name]
	)
	VALUES
	(
		@Id_1,
		@Name
	)
END

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_insert_or_replace]', N'U') IS NOT NULL)
	DROP TABLE [test_insert_or_replace]

