BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TestTable]', N'U') IS NULL)
	CREATE TABLE [TestTable]
	(
		[Id]     Int             NOT NULL IDENTITY,
		[Field1] Int                 NULL,
		[Field2] NVarChar(4000)      NULL,
		[Field3] Int                 NULL,

		CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DELETE FROM [TestTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TestTable]

