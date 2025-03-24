﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"grp"."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN "grp"."Active" = 0 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" "grp"
GROUP BY
	"grp"."SiteID"

