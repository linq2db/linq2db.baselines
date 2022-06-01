﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE TABLE "Issue1316Tests"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_Issue1316Tests" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Item1 Int32
SET     @Item1 = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID
FROM
	"Issue1316Tests" t1
WHERE
	t1.ID = :Item1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1316Tests"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

