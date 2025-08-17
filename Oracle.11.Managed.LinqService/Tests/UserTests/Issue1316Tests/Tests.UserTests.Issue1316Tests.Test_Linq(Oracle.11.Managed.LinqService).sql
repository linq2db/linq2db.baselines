BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1.ID
FROM
	"Issue1316Tests" t1
WHERE
	t1.ID IN (4, 5, 6) AND ROWNUM <= 2

