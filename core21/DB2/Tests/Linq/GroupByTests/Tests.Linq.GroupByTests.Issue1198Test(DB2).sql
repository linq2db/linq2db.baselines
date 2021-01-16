BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1192Table"
(
	"IdId"      Int NOT NULL,
	"MyOtherId" Int NOT NULL,
	"Status"    Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Issue1192Table" "t"
		WHERE
			"t"."Status" = 3 AND "t"."MyOtherId" = 12
	)
FROM
	"Issue1192Table" "t_1"
WHERE
	"t_1"."MyOtherId" = 12
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1192Table"

