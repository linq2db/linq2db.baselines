﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
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

