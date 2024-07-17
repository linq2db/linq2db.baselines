BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3927Table]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue3927Table]
(
	[SerialNumber] Char(11) NOT NULL,
	[PageNumber]   Int      NOT NULL,

	CONSTRAINT [PK_Issue3927Table] PRIMARY KEY CLUSTERED ([SerialNumber])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @pageNumber Integer -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	@pageNumber
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = @serialNumber

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3927Table]

