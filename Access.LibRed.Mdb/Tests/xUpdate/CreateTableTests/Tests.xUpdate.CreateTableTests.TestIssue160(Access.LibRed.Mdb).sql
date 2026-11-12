-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @bb  -- Int32
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [aa]

