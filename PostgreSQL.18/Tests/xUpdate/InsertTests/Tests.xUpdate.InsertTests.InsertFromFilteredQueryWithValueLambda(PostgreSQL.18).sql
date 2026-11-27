-- PostgreSQL.18 PostgreSQL12
DECLARE @pageNumber Integer -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- String
SET     @serialNumber = '12345678901'

INSERT INTO "SerialNumberPageTable"
(
	"PageNumber"
)
SELECT
	:pageNumber
FROM
	"SerialNumberPageTable" display
WHERE
	display."SerialNumber" = :serialNumber

