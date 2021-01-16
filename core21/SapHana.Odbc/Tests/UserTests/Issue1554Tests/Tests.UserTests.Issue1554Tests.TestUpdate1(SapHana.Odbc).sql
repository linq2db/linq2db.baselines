﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1554Table"
(
	"Id"              Integer     NOT NULL,
	"ClaimedKeyType"  NVarChar(3) NOT NULL,
	"ClaimedKeyTypeN" NVarChar(3)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN NVarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "Issue1554Table"
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"Issue1554Table"
SET
	"Issue1554Table"."ClaimedKeyType" = ?,
	"Issue1554Table"."ClaimedKeyTypeN" = ?
WHERE
	"Issue1554Table"."Id" = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1554Table"

