-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @pageNumber Integer -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- String
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

