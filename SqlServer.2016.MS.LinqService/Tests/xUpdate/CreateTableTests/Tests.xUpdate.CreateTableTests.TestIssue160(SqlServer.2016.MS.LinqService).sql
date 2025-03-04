﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(Max)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @bb Int -- Int32
SET     @bb = 99
DECLARE @cc NVarChar(4000) -- String
SET     @cc = N'hallo'

INSERT INTO [aa]
(
	[bb],
	[cc]
)
VALUES
(
	@bb,
	@cc
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE [aa]

