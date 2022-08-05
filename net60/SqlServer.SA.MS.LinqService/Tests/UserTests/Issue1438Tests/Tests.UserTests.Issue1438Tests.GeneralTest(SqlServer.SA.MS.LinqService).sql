﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [Issue1438]
(
	[Id]  Int  NOT NULL IDENTITY,
	[Has] Bit  NOT NULL,

	CONSTRAINT [PK_Issue1438] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Has Bit -- Boolean
SET     @Has = 1

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[_].[Id],
	[_].[Has]
FROM
	[Issue1438] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1438]

