﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(Max)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DROP TABLE [aa]

