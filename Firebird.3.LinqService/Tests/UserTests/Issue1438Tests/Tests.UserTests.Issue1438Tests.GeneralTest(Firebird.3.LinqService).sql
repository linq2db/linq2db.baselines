BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Has Boolean
SET     @Has = TRUE
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

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Id",
	"t1"."Has"
FROM
	"Issue1438" "t1"
WHERE
	"t1"."Id" = @id
FETCH NEXT 2 ROWS ONLY

