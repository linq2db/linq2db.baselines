﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [Issue1438]
(
	[Id]  Int  NOT NULL IDENTITY,
	[Has] Bit  NOT NULL,

	CONSTRAINT [PK_Issue1438] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
-- SqlServer.2014.MS SqlServer.2014
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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue1438]', N'U') IS NOT NULL)
	DROP TABLE [Issue1438]

