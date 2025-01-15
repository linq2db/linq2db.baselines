BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

select @@unicharsize

BeforeExecute
-- Sybase.Managed Sybase

select @@ncharsize

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_stored_procedures

BeforeExecute
-- Sybase.Managed Sybase

sp_oledb_getprocedurecolumns

BeforeExecute
BeginTransaction
BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY ON

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @RETURN_VALUE Integer(10) -- Int32
SET     @RETURN_VALUE = 0

[TestDataCore].[dbo].[AddIssue792Record]

BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY OFF

BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY ON

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @RETURN_VALUE Integer(10) -- Int32
SET     @RETURN_VALUE = 0

[TestDataCore].[dbo].[Person_SelectAll]

BeforeExecute
-- Sybase.Managed Sybase

SET FMTONLY OFF

BeforeExecute
RollbackTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[AllTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [AllTypes]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[char20DataType] = 'issue792'

