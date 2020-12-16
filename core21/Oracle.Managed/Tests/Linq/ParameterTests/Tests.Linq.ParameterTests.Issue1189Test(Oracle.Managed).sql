BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue1189Customer"
(
	ID   Int          NOT NULL,
	NAME VarChar(255) NOT NULL,

	CONSTRAINT "PK_Issue1189Customer" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TO_TIMESTAMP('2020-02-29 17:54:55.123123', 'YYYY-MM-DD HH24:MI:SS.FF6')

SELECT
	k_1.ID,
	k_1.NAME,
	:DateTime
FROM
	"Issue1189Customer" k_1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Issue1189Customer"

