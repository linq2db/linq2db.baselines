﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @pageNumber Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO "Issue3927Table"
(
	"PageNumber"
)
SELECT
	:pageNumber
FROM
	"Issue3927Table" display
WHERE
	display."SerialNumber" = :serialNumber

