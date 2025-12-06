-- Sybase.Managed Sybase

SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table2') IS NOT NULL)
	DROP TABLE [Issue681Table2]

-- Sybase.Managed Sybase

CREATE TABLE [dbo].[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table2') IS NOT NULL)
	DROP TABLE [Issue681Table2]

