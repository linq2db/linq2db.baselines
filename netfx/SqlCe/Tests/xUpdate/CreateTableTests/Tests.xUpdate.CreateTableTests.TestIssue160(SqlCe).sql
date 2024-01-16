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
DECLARE @bb Int -- Int32
SET     @bb = 99
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'

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
-- SqlCe

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [aa]

