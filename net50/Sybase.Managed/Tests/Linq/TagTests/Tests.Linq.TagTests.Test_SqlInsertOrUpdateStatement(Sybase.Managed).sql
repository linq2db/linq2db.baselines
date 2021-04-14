BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestTable]
(
	[Id] Int NOT NULL,
	[Fd] Int     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

/* My Test */
BEGIN TRAN

/* My Test */
UPDATE
	[TestTable]
SET
	[t1].[Fd] = 2
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTable') IS NOT NULL)
	DROP TABLE [TestTable]

