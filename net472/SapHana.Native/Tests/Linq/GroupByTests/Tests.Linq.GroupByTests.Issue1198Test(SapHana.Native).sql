BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1192Table"
(
	"IdId"      Integer NOT NULL,
	"MyOtherId" Integer NOT NULL,
	"Status"    Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

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
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1192Table"

