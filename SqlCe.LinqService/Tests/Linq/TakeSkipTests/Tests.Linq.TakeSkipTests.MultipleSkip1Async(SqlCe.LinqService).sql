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

DROP TABLE [TakeSkipClass]

