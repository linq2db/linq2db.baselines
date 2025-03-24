﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12
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
--  Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 5

SELECT
	t1.ID
FROM
	"Issue1316Tests" t1
WHERE
	t1.ID = :p
FETCH NEXT 2 ROWS ONLY

