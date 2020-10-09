BeforeExecute
-- SqlServer.2008

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take) 
	[t2].[Value_1]
FROM
	( 
		SELECT DISTINCT 
			[t1].[Value] as [Value_1]
		FROM
			[TakeSkipClass] [t1]
	) [t2]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TakeSkipClass]

