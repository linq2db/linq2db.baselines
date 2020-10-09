BeforeExecute
-- Firebird

CREATE TABLE "Issue1622Table"
(
	"Id"       Int                                    NOT NULL,
	"SomeText" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue1622Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "Issue1622Table"
(
	"Id",
	"SomeText"
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"e"."Id", 
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."SomeText" = 'Value1_suffix'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"e"."Id", 
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."Id" = 1

BeforeExecute
-- Firebird

DROP TABLE "Issue1622Table"

