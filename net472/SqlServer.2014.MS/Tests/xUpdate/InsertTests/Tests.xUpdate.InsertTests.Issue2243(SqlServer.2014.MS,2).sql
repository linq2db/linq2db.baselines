﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int            NOT NULL,
	[name]       NVarChar(4000)     NULL,
	[created_by] NVarChar(4000)     NULL,
	[updated_by] NVarChar(4000)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
		[t1].[name] = @Name,
		[t1].[updated_by] = @UpdatedBy
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
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
		[t1].[name] = @Name,
		[t1].[updated_by] = @UpdatedBy
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
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[test_insert_or_replace]', N'U') IS NOT NULL)
	DROP TABLE [test_insert_or_replace]

