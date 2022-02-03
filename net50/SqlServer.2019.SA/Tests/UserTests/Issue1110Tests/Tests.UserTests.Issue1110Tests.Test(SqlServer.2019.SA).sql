﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [Issue1110TB]
(
	[Id]        Int      NOT NULL,
	[TimeStamp] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 DateTime2
SET     @TimeStamp_1 = '2020-02-29T17:54:55.1231234'

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
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue1110TB]

