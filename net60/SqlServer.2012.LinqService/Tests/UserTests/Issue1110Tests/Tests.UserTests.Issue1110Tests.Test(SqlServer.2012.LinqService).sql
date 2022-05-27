﻿BeforeExecute
-- SqlServer.2012

CREATE TABLE [Issue1110TB]
(
	[Id]        Int       NOT NULL,
	[TimeStamp] DateTime2 NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 DateTime2
SET     @TimeStamp_1 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1110TB]', N'U') IS NOT NULL)
	DROP TABLE [Issue1110TB]

