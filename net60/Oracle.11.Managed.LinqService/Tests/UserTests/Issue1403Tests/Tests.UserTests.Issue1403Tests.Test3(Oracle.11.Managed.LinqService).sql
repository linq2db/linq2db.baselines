﻿BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "Issue1403Tests_3"
(
	"event_description" VarChar(255) NOT NULL,
	"event_id"          Int          NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY ("event_id")
)

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "Issue1403Tests_3"
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
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."event_description",
	t1."event_id"
FROM
	"Issue1403Tests_3" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1403Tests_3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

