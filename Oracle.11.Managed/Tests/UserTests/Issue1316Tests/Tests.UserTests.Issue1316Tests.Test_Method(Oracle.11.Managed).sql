﻿BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 5

SELECT
	t1.ID
FROM
	"Issue1316Tests" t1
WHERE
	t1.ID = :p AND ROWNUM <= 2

