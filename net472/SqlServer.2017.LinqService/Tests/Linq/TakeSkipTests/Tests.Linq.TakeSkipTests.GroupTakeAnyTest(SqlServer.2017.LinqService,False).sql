BeforeExecute
-- SqlServer.2017

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value_1 VarChar(10) -- AnsiString
SET     @Value_1 = N'PIPPO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value_1 VarChar(10) -- AnsiString
SET     @Value_1 = N'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value_1 VarChar(10) -- AnsiString
SET     @Value_1 = N'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value_1 VarChar(10) -- AnsiString
SET     @Value_1 = N'BOLTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT TOP (1)
			[t1].[Value]
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
	), 1, 0)

BeforeExecute
-- SqlServer.2017

DROP TABLE [TakeSkipClass]

