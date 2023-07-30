BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TakeSkipClass') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TakeSkipClass') IS NULL)
	EXECUTE('
		CREATE TABLE [TakeSkipClass]
		(
			[Value] VarChar(10)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value1'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value2'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value3'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value4'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value5'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value6'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value7'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value8'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TakeSkipClass') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

