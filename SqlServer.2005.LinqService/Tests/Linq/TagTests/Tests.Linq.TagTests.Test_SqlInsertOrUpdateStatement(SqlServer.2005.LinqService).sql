BeforeExecute
-- SqlServer.2005 (asynchronously)

/* My Test */
/* My Test */
UPDATE
	[TestTable]
SET
	[Fd] = 2
FROM
	[TestTable] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
/* My Test */
	INSERT INTO [TestTable]
	(
		[Id],
		[Fd]
	)
	VALUES
	(
		1,
		2
	)
END

