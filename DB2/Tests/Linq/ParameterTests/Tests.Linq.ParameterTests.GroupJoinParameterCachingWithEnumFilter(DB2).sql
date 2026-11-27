-- DB2 DB2.LUW DB2LUW
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @usage Integer(4) -- Int32
SET     @usage = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @usage

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @usage Integer(4) -- Int32
SET     @usage = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @usage

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @usage Integer(4) -- Int32
SET     @usage = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @usage

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @usage Integer(4) -- Int32
SET     @usage = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @usage

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

