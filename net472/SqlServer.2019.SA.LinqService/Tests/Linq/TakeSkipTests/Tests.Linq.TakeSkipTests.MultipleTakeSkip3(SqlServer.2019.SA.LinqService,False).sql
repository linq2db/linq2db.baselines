﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [TakeSkipClass]

