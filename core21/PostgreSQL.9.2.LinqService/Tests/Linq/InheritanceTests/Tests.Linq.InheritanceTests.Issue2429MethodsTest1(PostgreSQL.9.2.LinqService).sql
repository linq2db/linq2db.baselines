BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "BaseTable"
(
	"Value" Int NOT NULL,
	"Id"    Int NOT NULL,

	CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
VALUES
(100,1)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	x."Value", 
	x."Id"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	x."Value", 
	x."Id"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "BaseTable"

