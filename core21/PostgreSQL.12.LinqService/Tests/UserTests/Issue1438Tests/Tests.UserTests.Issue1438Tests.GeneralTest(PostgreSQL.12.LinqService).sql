﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1438"
(
	"Id"  SERIAL   NOT NULL,
	"Has" Boolean  NOT NULL,

	CONSTRAINT "PK_Issue1438" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."Has"
FROM
	"Issue1438" t1
WHERE
	t1."Id" = :id_1
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Issue1438"

