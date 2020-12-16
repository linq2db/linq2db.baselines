BeforeExecute
-- SqlServer.2008

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2008
DECLARE @Value_1 VarChar(10) -- AnsiString
SET     @Value_1 = N'Value1'

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
SET     @Value_1 = N'Value2'

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
SET     @Value_1 = N'Value3'

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
SET     @Value_1 = N'Value4'

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
SET     @Value_1 = N'Value5'

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
SET     @Value_1 = N'Value6'

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
SET     @Value_1 = N'Value7'

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
SET     @Value_1 = N'Value8'

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
SET     @Value_1 = N'Value9'

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
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int -- Int32
SET     @skip_3 = 4

SELECT
	[t2].[Value_1]
FROM
	(
		SELECT
			[t1].[Value] as [Value_1],
			ROW_NUMBER() OVER (ORDER BY [t1].[Value]) as [RN]
		FROM
			[TakeSkipClass] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip_2 AND [t2].[RN] <= @skip_3

BeforeExecute
-- SqlServer.2008

DROP TABLE [TakeSkipClass]

