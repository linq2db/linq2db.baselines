BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	CASE WHEN EXISTS(
		SELECT TOP (@take)
			[t1].[Value]
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
	) THEN 1 ELSE 0 END

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [TakeSkipClass]

