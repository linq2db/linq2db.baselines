BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
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
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."SomeText" = 'Value1_suffix'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."Id" = 1
FETCH NEXT 2 ROWS ONLY

