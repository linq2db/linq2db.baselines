BeforeExecute
-- Firebird

CREATE TABLE "Issue1192Table"
(
	"IdId"      Int NOT NULL,
	"MyOtherId" Int NOT NULL,
	"Status"    Int NOT NULL
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	(
		SELECT
			Count(*)
		FROM
			"Issue1192Table" "t"
		WHERE
			"t1"."Key_1" = 1 AND "t"."Status" = 3 AND "t"."MyOtherId" = 12
	)
FROM
	(
		SELECT
			1 as "Key_1"
		FROM
			"Issue1192Table" "t_1"
		WHERE
			"t_1"."MyOtherId" = 12
	) "t1"
GROUP BY
	"t1"."Key_1"

BeforeExecute
-- Firebird

DROP TABLE "Issue1192Table"

