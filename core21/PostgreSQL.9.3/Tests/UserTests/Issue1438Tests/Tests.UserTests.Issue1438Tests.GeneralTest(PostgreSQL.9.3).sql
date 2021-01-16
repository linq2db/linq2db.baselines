BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Issue1438"
(
	"Id"  SERIAL   NOT NULL,
	"Has" Boolean  NOT NULL,

	CONSTRAINT "PK_Issue1438" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Has Boolean
SET     @Has = True

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	:Has
)
RETURNING 
	"Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Issue1438"

