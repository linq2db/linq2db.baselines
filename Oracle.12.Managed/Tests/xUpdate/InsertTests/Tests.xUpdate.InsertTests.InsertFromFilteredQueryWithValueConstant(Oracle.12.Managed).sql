-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @PageNumber Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO "SerialNumberPageTable"
(
	"PageNumber"
)
SELECT
	:PageNumber
FROM
	"SerialNumberPageTable" display
WHERE
	display."SerialNumber" = :serialNumber

