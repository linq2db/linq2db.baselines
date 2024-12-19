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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod UniVarChar -- String
SET     @ExpressionMethod = NULL

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(
	@Id,
	@ExpressionMethod
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value UniVarChar(7) -- String
SET     @Value = 'Value 2'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table2') IS NOT NULL)
	DROP TABLE [Issue4723Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4723Table1') IS NOT NULL)
	DROP TABLE [Issue4723Table1]

