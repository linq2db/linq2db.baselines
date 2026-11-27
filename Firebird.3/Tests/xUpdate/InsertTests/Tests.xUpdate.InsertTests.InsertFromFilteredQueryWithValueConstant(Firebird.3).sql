-- Firebird.3 Firebird3
DECLARE @PageNumber Integer -- Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- String
SET     @serialNumber = '12345678901'

INSERT INTO "SerialNumberPageTable"
(
	"PageNumber"
)
SELECT
	CAST(@PageNumber AS Int)
FROM
	"SerialNumberPageTable" "display"
WHERE
	"display"."SerialNumber" = @serialNumber

