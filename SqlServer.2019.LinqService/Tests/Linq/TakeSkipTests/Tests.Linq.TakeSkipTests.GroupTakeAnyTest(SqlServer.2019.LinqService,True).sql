BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	IIF(EXISTS(
		SELECT TOP (@take)
			[group_1].[Value]
		FROM
			[TakeSkipClass] [group_1]
		GROUP BY
			[group_1].[Value]
		HAVING
			COUNT(*) > 1
	), 1, 0)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

