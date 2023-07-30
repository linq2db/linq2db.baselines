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
		'test'
	)
END

BeforeExecute
-- Sybase.Managed Sybase

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
		'test'
	)
END

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'test_insert_or_replace') IS NOT NULL)
	DROP TABLE [test_insert_or_replace]

