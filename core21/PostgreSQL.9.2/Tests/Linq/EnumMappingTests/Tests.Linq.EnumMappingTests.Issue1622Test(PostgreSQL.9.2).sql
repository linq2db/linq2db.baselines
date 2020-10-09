BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue1622Table"
(
	"Id"       Int  NOT NULL,
	"SomeText" text     NULL,

	CONSTRAINT "PK_Issue1622Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeText Text(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "Issue1622Table"
(
	"Id",
	"SomeText"
)
VALUES
(
	:Id,
	:SomeText
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	e."Id", 
	e."SomeText"
FROM
	"Issue1622Table" e
WHERE
	e."SomeText" = 'Value1_suffix'
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	e."Id", 
	e."SomeText"
FROM
	"Issue1622Table" e
WHERE
	e."Id" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Issue1622Table"

