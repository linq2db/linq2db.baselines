BeforeExecute
-- SqlServer.2022 (asynchronously)

CREATE TABLE [aa]
(
	[bb] Int            NOT NULL,
	[cc] NVarChar(4000)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- SqlServer.2022 (asynchronously)
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
-- SqlServer.2022 (asynchronously)

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- SqlServer.2022 (asynchronously)

DROP TABLE [aa]

