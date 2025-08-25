BeforeExecute
-- SqlCe (asynchronously)

/* My Test */
UPDATE
	[TestTable]
SET
	[Fd] = 2
WHERE
	[TestTable].[Id] = 1

BeforeExecute
-- SqlCe (asynchronously)

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

