BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TestTable]', N'U') IS NULL)
	CREATE TABLE [TestTable]
	(
		[Id] Int NOT NULL,
		[Fd] Int     NULL,

		CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Fd Int -- Int32
SET     @Fd = 2
DECLARE @Fd_1 Int -- Int32
SET     @Fd_1 = 2

/* My Test */
MERGE INTO [TestTable] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Fd] = @Fd
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[Fd]
	)
	VALUES
	(
		@Id,
		@Fd_1
	);

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]

