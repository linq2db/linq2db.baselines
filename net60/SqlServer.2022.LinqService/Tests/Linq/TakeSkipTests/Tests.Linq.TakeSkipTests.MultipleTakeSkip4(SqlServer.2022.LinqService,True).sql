﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
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
-- SqlServer.2022
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 3
DECLARE @take_2 Int -- Int32
SET     @take_2 = 2

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip_1 ROWS FETCH NEXT @take_2 ROWS ONLY 

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TakeSkipClass]

