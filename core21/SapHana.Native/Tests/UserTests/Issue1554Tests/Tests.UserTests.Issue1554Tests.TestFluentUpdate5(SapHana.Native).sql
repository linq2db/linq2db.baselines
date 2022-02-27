BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1554FluentTable"
(
	"Id"              Integer     NOT NULL,
	"ClaimedKeyType"  NVarChar(3) NOT NULL,
	"ClaimedKeyTypeN" NVarChar(3)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "Issue1554FluentTable"
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

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"Issue1554FluentTable"
SET
	"Issue1554FluentTable"."ClaimedKeyType" = :"ClaimedKeyType",
	"Issue1554FluentTable"."ClaimedKeyTypeN" = :"ClaimedKeyTypeN"
WHERE
	"Issue1554FluentTable"."Id" = 0

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554FluentTable" "t1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1554FluentTable"

