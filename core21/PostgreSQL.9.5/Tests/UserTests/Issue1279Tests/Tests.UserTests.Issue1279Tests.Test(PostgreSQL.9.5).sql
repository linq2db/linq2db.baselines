BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1279Table"
(
	"Id"      SERIAL     NOT NULL,
	"CharFld" character  NOT NULL,

	CONSTRAINT "PK_Issue1279Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @CharFld Text -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	:CharFld
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t1."Id", 
	t1."CharFld"
FROM
	"Issue1279Table" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "Issue1279Table"

