BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1554Table"
(
	"Id"              Integer     NOT NULL,
	"ClaimedKeyType"  NVarChar(3) NOT NULL,
	"ClaimedKeyTypeN" NVarChar(3)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id_1_1_1_1  -- Int32
SET     @Id_1_1_1_1 = 0
DECLARE @ClaimedKeyType_1_1_1_1 NVarChar(2) -- String
SET     @ClaimedKeyType_1_1_1_1 = 'EC'
DECLARE @ClaimedKeyTypeN_1_1_1_1 NVarChar(2) -- String
SET     @ClaimedKeyTypeN_1_1_1_1 = 'EC'

INSERT INTO "Issue1554Table"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	:"Id_1_1_1_1",
	:"ClaimedKeyType_1_1_1_1",
	:"ClaimedKeyTypeN_1_1_1_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554Table" "t1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1554Table"

