BeforeExecute
-- SqlServer.2005

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

/* My Test */
BEGIN TRAN

/* My Test */
UPDATE
	[t1]
SET
	[t1].[Id] = 1
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

COMMIT

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]

