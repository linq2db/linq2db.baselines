-- Firebird.4 Firebird4
DECLARE @Has Boolean
SET     @Has = TRUE
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "FluentIdentityClient"
(
	"Has"
)
VALUES
(
	@Has
)
RETURNING
	"Id"

-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Id",
	"t1"."Has"
FROM
	"FluentIdentityClient" "t1"
WHERE
	"t1"."Id" = @id
FETCH NEXT 2 ROWS ONLY

