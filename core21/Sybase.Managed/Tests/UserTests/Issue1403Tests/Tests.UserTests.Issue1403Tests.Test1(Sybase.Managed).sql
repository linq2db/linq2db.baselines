BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1403Tests_1]
(
	[event_id]          Int           NOT NULL,
	[event_description] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_1] PRIMARY KEY CLUSTERED ([event_id])
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue1403Tests_1]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[t1].[event_description], 
	[t1].[event_id]
FROM
	[Issue1403Tests_1] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Issue1403Tests_1]

