BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue1403Tests_2"
(
	"event_id"          Int          NOT NULL,
	"event_description" VarChar(255) NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_2" PRIMARY KEY ("event_id")
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO "Issue1403Tests_2"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."event_id",
	t1."event_description"
FROM
	"Issue1403Tests_2" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Issue1403Tests_2"

