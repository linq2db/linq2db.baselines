-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "MappedEnumKeyRecord"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	:"Id",
	:"ClaimedKeyType",
	:"ClaimedKeyTypeN"
)

-- SapHana.Native SapHana
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"MappedEnumKeyRecord" "p"
SET
	"ClaimedKeyType" = :"ClaimedKeyType",
	"ClaimedKeyTypeN" = :"ClaimedKeyTypeN"
WHERE
	"p"."Id" = 0

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"MappedEnumKeyRecord" "t1"
LIMIT 2

