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
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TakeSkipClass]

