﻿BeforeExecute
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
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [TakeSkipClass]

