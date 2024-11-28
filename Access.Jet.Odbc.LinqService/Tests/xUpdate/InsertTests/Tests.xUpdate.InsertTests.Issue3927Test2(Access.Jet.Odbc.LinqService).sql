BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3927Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue3927Table]
(
	[SerialNumber] Char(11) NOT NULL,
	[PageNumber]   Int      NOT NULL,

	CONSTRAINT [PK_Issue3927Table] PRIMARY KEY CLUSTERED ([SerialNumber])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @pageNumber Int -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO [Issue3927Table]
(
	[PageNumber]
)
SELECT
	?
FROM
	[Issue3927Table] [display]
WHERE
	[display].[SerialNumber] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3927Table]

