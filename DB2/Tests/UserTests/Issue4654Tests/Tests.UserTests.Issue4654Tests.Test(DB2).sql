-- DB2 DB2.LUW DB2LUW

SELECT
	RTrim(Char("c_1"."Id")),
	"c_1"."Name"
FROM
	"Issue4654Customer" "c_1"
UNION
SELECT
	RTrim(Char("o"."Id")),
	"o"."ProductName"
FROM
	"Issue4654Order" "o"
UNION
SELECT
	RTrim(Char("p"."Id")),
	"p"."Name"
FROM
	"Issue4654Product" "p"

