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

IF NOT EXISTS(
	SELECT 1 
	FROM
		[test_insert_or_replace] [t1]
	WHERE
		[t1].[id] = 1
)
BEGIN
	INSERT INTO [test_insert_or_replace]
	(
		[id],
		[name]
	)
	VALUES
	(
		1,
		N'test'
	)
END

BeforeExecute
-- SqlServer.2005

IF NOT EXISTS(
	SELECT 1 
	FROM
		[test_insert_or_replace] [t1]
	WHERE
		[t1].[id] = 1
)
BEGIN
	INSERT INTO [test_insert_or_replace]
	(
		[id],
		[name]
	)
	VALUES
	(
		1,
		N'test'
	)
END

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_insert_or_replace]', N'U') IS NOT NULL)
	DROP TABLE [test_insert_or_replace]

