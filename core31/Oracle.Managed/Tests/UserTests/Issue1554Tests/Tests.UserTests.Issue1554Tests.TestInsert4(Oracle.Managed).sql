BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue1554Table"
(
	"Id"              Int        NOT NULL,
	"ClaimedKeyType"  VarChar(3) NOT NULL,
	"ClaimedKeyTypeN" VarChar(3)     NULL,

	CONSTRAINT "PK_Issue1554Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Varchar2(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN Varchar2(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

INSERT INTO "Issue1554Table"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	:Id,
	:ClaimedKeyType,
	:ClaimedKeyTypeN
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."ClaimedKeyType",
	t1."ClaimedKeyTypeN"
FROM
	"Issue1554Table" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Issue1554Table"

