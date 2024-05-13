BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value1'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value2'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value3'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value4'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value5'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value6'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value7'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @Value VarChar(10) -- AnsiString
SET     @Value = N'Value8'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TakeSkipClass]

