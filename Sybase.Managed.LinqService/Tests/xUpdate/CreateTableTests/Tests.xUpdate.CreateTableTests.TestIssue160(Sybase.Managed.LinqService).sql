BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @bb Integer -- Int32
SET     @bb = 99
DECLARE @cc UniVarChar(5) -- String
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
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [aa]

