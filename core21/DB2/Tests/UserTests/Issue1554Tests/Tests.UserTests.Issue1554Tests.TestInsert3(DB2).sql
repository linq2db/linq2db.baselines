BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1554Table"
(
	"Id"              Int            NOT NULL,
	"ClaimedKeyType"  NVarChar(8168) NOT NULL,
	"ClaimedKeyTypeN" NVarChar(8168)     NULL,

	CONSTRAINT "PK_Issue1554Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType VarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN VarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

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

