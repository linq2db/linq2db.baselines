-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @cond Integer(4) -- Int32
SET     @cond = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @cond Integer(4) -- Int32
SET     @cond = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @cond Integer(4) -- Int32
SET     @cond = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @cond Integer(4) -- Int32
SET     @cond = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

