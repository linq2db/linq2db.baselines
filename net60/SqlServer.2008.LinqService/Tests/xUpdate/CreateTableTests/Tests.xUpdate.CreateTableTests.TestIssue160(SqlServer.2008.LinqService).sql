BeforeExecute
-- SqlServer.2008

CREATE TABLE [aa]
(
	[bb] Int            NOT NULL,
	[cc] NVarChar(4000)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- SqlServer.2008
DECLARE @cc NVarChar(4000) -- String
SET     @cc = N'hallo'
DECLARE @bb Int -- Int32
SET     @bb = 99

INSERT INTO [aa]
(
	[cc],
	[bb]
)
VALUES
(
	@cc,
	@bb
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[cc],
	[t1].[bb]
FROM
	[aa] [t1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [aa]

