BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("c_1"."Id" AS NVarChar(5000)),
	"c_1"."Name"
FROM
	"Issue4654Customer" "c_1"
UNION
SELECT
	CAST("o"."Id" AS NVarChar(5000)),
	"o"."ProductName"
FROM
	"Issue4654Order" "o"
UNION
SELECT
	CAST("p"."Id" AS NVarChar(5000)),
	"p"."Name"
FROM
	"Issue4654Product" "p"

