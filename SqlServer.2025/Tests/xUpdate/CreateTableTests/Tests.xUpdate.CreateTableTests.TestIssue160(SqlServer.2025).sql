-- SqlServer.2025 SqlServer.2022

CREATE TABLE [aa]
(
	[bb] Int            NOT NULL,
	[cc] NVarChar(4000)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

-- SqlServer.2025 SqlServer.2022
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

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

-- SqlServer.2025 SqlServer.2022

DROP TABLE [aa]

