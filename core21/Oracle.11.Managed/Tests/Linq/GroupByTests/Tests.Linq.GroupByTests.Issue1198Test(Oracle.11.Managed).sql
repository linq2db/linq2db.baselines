BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue1192Table"
(
	"IdId"      Int NOT NULL,
	"MyOtherId" Int NOT NULL,
	"Status"    Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."MyGroupedCount"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"Issue1192Table" t
				WHERE
					t1."Key_1" = 1 AND t."Status" = 3 AND t."MyOtherId" = 12
			) as "MyGroupedCount"
		FROM
			(
				SELECT
					1 as "Key_1"
				FROM
					"Issue1192Table" t_1
				WHERE
					t_1."MyOtherId" = 12
			) t1
		GROUP BY
			t1."Key_1"
	) t2
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "Issue1192Table"

