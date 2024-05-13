BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 1
DECLARE @take Int -- Int32
SET     @take = 2

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
	[t2].[RN] > @skip + @skip_1 AND [t2].[RN] <= (@skip + @skip_1 + @take - @skip_1)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

