-- DB2 DB2.LUW DB2LUW
DECLARE @pageNumber Integer(4) -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- StringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO "SerialNumberPageTable"
(
	"PageNumber"
)
SELECT
	CAST(@pageNumber AS Int)
FROM
	"SerialNumberPageTable" "display"
WHERE
	"display"."SerialNumber" = @serialNumber

