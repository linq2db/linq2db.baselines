BeforeExecute
-- SqlServer.2005

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int            NOT NULL,
	[name]       NVarChar(4000)     NULL,
	[created_by] NVarChar(4000) NOT NULL,
	[updated_by] NVarChar(4000)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Test1'
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'TEST_USER1'

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[name] = @Name,
	[t1].[updated_by] = @UpdatedBy
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
		@Name,
		@CreatedBy
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Test2'
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = N'TEST_USER1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'TEST_USER1'

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[name] = @Name,
	[t1].[updated_by] = @UpdatedBy
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
		@Name,
		@CreatedBy
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005

DROP TABLE [test_insert_or_replace]

