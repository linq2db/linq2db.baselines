BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Test1'
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'TEST_USER2'

MERGE INTO [test_insert_or_replace] [t1]
USING (SELECT @Id AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[name] = @Name,
		[updated_by] = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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
	);

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Test2'
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = N'TEST_USER2'
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = N'TEST_USER2'

MERGE INTO [test_insert_or_replace] [t1]
USING (SELECT @Id AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[name] = @Name,
		[updated_by] = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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
	);

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

