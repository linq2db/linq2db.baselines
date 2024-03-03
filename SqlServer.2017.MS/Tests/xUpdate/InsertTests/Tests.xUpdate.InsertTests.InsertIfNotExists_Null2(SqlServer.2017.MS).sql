BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [test_insert_or_replace]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'test'

MERGE INTO [test_insert_or_replace] [t1]
USING (SELECT @Id AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[name]
	)
	VALUES
	(
		@Id_1,
		@Name
	);

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'test'

MERGE INTO [test_insert_or_replace] [t1]
USING (SELECT @Id AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[name]
	)
	VALUES
	(
		@Id_1,
		@Name
	);

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [test_insert_or_replace]

