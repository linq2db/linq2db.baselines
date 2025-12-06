-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"TransactionLine" "t1"
WHERE
	"t1"."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"TransactionLine" "t1"
WHERE
	"t1"."Id" = 2
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 2

SELECT
	"x"."Id"
FROM
	"TransactionLine" "x"
WHERE
	"x"."Id" = @UserId
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 2

SELECT
	"x"."Id"
FROM
	"TransactionLine" "x"
WHERE
	"x"."Id" = @UserId
FETCH NEXT 2 ROWS ONLY

