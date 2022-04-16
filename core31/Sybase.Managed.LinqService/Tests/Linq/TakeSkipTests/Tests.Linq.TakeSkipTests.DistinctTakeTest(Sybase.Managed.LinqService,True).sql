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
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PIPPO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'BOLTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT DISTINCT TOP 3
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TakeSkipClass') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

