-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @PageNumber Integer -- Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- String
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

