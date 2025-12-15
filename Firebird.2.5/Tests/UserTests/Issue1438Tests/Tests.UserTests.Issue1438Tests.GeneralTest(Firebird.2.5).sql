-- Firebird.2.5 Firebird
DECLARE @Has Char -- String
SET     @Has = '1'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	@Has
)
RETURNING
	"Id"

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT FIRST 2
	"t1"."Id",
	"t1"."Has"
FROM
	"Issue1438" "t1"
WHERE
	"t1"."Id" = @id

