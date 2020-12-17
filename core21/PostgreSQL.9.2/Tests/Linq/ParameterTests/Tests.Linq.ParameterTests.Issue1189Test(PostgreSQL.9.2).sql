BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue1189Customer"
(
	"ID"   Int  NOT NULL,
	"NAME" text NOT NULL,

	CONSTRAINT "PK_Issue1189Customer" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @DateTime Timestamp -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'::timestamp

SELECT
	k_1."ID",
	k_1."NAME",
	:DateTime
FROM
	"Issue1189Customer" k_1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Issue1189Customer"

