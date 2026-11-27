-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar -- String
SET     @ClaimedKeyTypeN = NULL

INSERT INTO "FluentMappedEnumKeyRecord"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"FluentMappedEnumKeyRecord" "t1"
LIMIT 2

