BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

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

