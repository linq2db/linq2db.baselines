﻿BeforeExecute
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
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT TOP (@take)
				[group_1].[Value]
			FROM
				[TakeSkipClass] [group_1]
			GROUP BY
				[group_1].[Value]
			HAVING
				Count(*) > 1
		)
			THEN 1
		ELSE 0
	END as [c1]

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

