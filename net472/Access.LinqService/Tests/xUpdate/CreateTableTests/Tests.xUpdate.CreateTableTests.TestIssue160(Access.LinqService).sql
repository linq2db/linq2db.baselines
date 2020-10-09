BeforeExecute
-- Access AccessOleDb

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @cc VarWChar(5) -- String
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
-- Access AccessOleDb

SELECT 
	[t1].[cc], 
	[t1].[bb]
FROM
	[aa] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [aa]

