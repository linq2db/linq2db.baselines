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

