﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

INSERT INTO [Issue1403Tests_1]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	N'New event'
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_1] [t1]

