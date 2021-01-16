﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1554Table"
(
	"Id"              Int         NOT NULL,
	"ClaimedKeyType"  NVarChar(3) NOT NULL,
	"ClaimedKeyTypeN" NVarChar(3)     NULL,

	CONSTRAINT "PK_Issue1554Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(3) -- String
SET     @ClaimedKeyType = 'RSA'
DECLARE @ClaimedKeyTypeN VarChar(3) -- String
SET     @ClaimedKeyTypeN = 'RSA'

INSERT INTO "Issue1554Table"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	@Id,
	@ClaimedKeyType,
	@ClaimedKeyTypeN
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

UPDATE
	"Issue1554Table"
SET
	"Issue1554Table"."ClaimedKeyType" = @ClaimedKeyType,
	"Issue1554Table"."ClaimedKeyTypeN" = @ClaimedKeyTypeN
WHERE
	"Issue1554Table"."Id" = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."ClaimedKeyType",
	"t1"."ClaimedKeyTypeN"
FROM
	"Issue1554Table" "t1"
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1554Table"

