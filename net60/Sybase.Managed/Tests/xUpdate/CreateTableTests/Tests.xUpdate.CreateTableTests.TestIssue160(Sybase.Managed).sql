BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [aa]

