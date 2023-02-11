BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1403Tests_1') IS NOT NULL)
	DROP TABLE [Issue1403Tests_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1403Tests_1') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1403Tests_1]
		(
			[event_id]          Int           NOT NULL,
			[event_description] NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Issue1403Tests_1] PRIMARY KEY CLUSTERED ([event_id])
		)
	')

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
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_1] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1403Tests_1') IS NOT NULL)
	DROP TABLE [Issue1403Tests_1]

