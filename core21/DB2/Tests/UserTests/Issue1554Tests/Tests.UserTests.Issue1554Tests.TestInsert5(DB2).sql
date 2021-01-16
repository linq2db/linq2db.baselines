BeforeExecute
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

DROP TABLE "Issue1554Table"

