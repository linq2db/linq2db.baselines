BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[TransactionScopeTable]', N'U') IS NOT NULL)
	DROP TABLE [TransactionScopeTable]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[TransactionScopeTable]', N'U') IS NOT NULL)
	DROP TABLE [TransactionScopeTable]

