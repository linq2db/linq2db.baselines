﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int            NOT NULL,
	[name]       NVarChar(4000)     NULL,
	[created_by] NVarChar(4000)     NULL,
	[updated_by] NVarChar(4000)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

MERGE INTO [test_insert_or_replace] [t1]
USING (SELECT 1 AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[name]
	)
	VALUES
	(
		1,
		N'test'
	);

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

MERGE INTO [test_insert_or_replace] [t1]
USING (SELECT 1 AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[name]
	)
	VALUES
	(
		1,
		N'test'
	);

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [test_insert_or_replace]

