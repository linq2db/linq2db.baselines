﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @pageNumber Int -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = N'12345678901'

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

