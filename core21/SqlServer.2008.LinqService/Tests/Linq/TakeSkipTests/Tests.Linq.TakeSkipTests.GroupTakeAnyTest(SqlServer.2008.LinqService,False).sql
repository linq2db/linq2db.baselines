﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

SELECT
	CASE WHEN EXISTS(
		SELECT TOP (1)
			*
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
	) THEN 1 ELSE 0 END

BeforeExecute
-- SqlServer.2008

DROP TABLE [TakeSkipClass]

