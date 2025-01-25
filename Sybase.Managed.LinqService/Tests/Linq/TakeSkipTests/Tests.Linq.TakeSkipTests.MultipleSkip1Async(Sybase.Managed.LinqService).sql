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
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

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
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PIPPO'

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
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

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
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'BOLTO'

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

IF (OBJECT_ID(N'TakeSkipClass') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

