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
DECLARE @cc UniVarChar(5) -- String
SET     @cc = 'hallo'
DECLARE @bb Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	[t1].[cc],
	[t1].[bb]
FROM
	[aa] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [aa]

