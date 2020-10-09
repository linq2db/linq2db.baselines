BeforeExecute
-- SqlCe

CREATE TABLE [TakeSkipClass]
(
	[Value] NVarChar(10)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(5) -- String
SET     @Value_1 = 'PIPPO'

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
DECLARE @Value_1 NVarChar(5) -- String
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 NVarChar(5) -- String
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 NVarChar(5) -- String
SET     @Value_1 = 'BOLTO'

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
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	CASE WHEN EXISTS(
		SELECT TOP (@take) 
			1
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
	) THEN 1 ELSE 0 END

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

