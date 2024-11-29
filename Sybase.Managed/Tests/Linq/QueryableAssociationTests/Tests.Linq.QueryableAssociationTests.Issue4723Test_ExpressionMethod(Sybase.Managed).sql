BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table1') IS NOT NULL)
	DROP TABLE [Issue4723Table1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table1') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4723Table1]
		(
			[Id]               Int           NOT NULL,
			[ExpressionMethod] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
SELECT 1,NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table2') IS NOT NULL)
	DROP TABLE [Issue4723Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table2') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4723Table2]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
SELECT 1,'Value 1' UNION ALL
SELECT 1,'Value 1' UNION ALL
SELECT 2,'Value 2'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table2') IS NOT NULL)
	DROP TABLE [Issue4723Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table1') IS NOT NULL)
	DROP TABLE [Issue4723Table1]

