BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue1192Table"
(
	"IdId"      Int NOT NULL,
	"MyOtherId" Int NOT NULL,
	"Status"    Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Issue1192Table" t
		WHERE
			t."Status" = 3 AND t."MyOtherId" = 12
	)
FROM
	"Issue1192Table" t_1
WHERE
	t_1."MyOtherId" = 12
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Issue1192Table"

