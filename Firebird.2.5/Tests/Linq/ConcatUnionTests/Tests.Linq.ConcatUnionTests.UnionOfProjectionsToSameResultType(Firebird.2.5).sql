-- Firebird.2.5 Firebird
SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"UnionSourceCustomer" "c_1"
UNION
SELECT
	"o"."Id",
	"o"."ProductName"
FROM
	"UnionSourceOrder" "o"
UNION
SELECT
	"p"."Id",
	"p"."Name"
FROM
	"UnionSourceProduct" "p"

