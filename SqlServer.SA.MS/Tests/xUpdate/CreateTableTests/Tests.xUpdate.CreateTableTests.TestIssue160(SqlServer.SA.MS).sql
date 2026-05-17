-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [aa]
(
	[bb] Int            NOT NULL,
	[cc] NVarChar(4000)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

-- SqlServer.SA.MS SqlServer.2019
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

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE [aa]

