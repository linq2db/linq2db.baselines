BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

BeforeExecute
-- SqlCe

CREATE TABLE [TakeSkipClass]
(
	[Value] NVarChar(10)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'PIPPO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'BOLTO'

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[t1].[Value] as [Value_1]
FROM
	[TakeSkipClass] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

