BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Test1'
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'TEST_USER3'

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
		@Name,
		@CreatedBy
	)
END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Test2'
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = N'TEST_USER3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'TEST_USER3'

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
		@Name,
		@CreatedBy
	)
END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

