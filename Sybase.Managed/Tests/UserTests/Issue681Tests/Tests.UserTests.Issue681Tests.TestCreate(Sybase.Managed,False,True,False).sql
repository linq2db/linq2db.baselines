﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue681Table]
		(
			[ID]    Int NOT NULL,
			[Value] Int NOT NULL,

			CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table2') IS NOT NULL)
	DROP TABLE [Issue681Table2]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestDataCore]..[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table2') IS NOT NULL)
	DROP TABLE [Issue681Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

