BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'PIPPO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'BOLTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT TOP (1)
				[group_1].[Value]
			FROM
				[TakeSkipClass] [group_1]
			GROUP BY
				[group_1].[Value]
			HAVING
				COUNT(*) > 1
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

