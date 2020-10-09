BeforeExecute
-- SqlCe

CREATE TABLE [TakeSkipClass]
(
	[Value] NVarChar(10)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value1'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value2'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value3'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value4'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value5'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value6'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value7'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value8'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(6) -- String
SET     @Value_1 = 'Value9'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SqlCe
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 3
DECLARE @take_2 Int -- Int32
SET     @take_2 = 2

SELECT 
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip_2 ROWS FETCH NEXT @take_2 ROWS ONLY 

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

