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

DROP TABLE "Issue1279Table"

