﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TransactionScopeTable]', N'U') IS NOT NULL)
	DROP TABLE [TransactionScopeTable]

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TransactionScopeTable]', N'U') IS NOT NULL)
	DROP TABLE [TransactionScopeTable]

