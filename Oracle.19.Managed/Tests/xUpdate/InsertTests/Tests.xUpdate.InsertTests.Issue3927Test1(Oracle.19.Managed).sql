-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @PageNumber Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO "Issue3927Table"
(
	"PageNumber"
)
SELECT
	:PageNumber
FROM
	"Issue3927Table" display
WHERE
	display."SerialNumber" = :serialNumber

