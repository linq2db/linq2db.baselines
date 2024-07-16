BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3927Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3927Table"
(
	"SerialNumber" Char(11) NOT NULL,
	"PageNumber"   Int      NOT NULL,

	CONSTRAINT "PK_Issue3927Table" PRIMARY KEY ("SerialNumber")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3927Table"

