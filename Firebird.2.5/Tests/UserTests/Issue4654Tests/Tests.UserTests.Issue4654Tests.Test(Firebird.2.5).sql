-- Firebird.2.5 Firebird

SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Issue4654Customer" "c_1"
UNION
SELECT
	"o"."Id",
	"o"."ProductName"
FROM
	"Issue4654Order" "o"
UNION
SELECT
	"p"."Id",
	"p"."Name"
FROM
	"Issue4654Product" "p"

