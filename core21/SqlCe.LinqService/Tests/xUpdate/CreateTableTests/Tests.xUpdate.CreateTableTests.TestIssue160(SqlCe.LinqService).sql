BeforeExecute
-- SqlCe

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY ([bb])
)

BeforeExecute
-- SqlCe
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'
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
-- SqlCe

SELECT 
	[t1].[cc], 
	[t1].[bb]
FROM
	[aa] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [aa]

