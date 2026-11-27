-- Firebird.3 Firebird3
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- Firebird.3 Firebird3
DECLARE @usage Integer -- Int32
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

-- Firebird.3 Firebird3
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- Firebird.3 Firebird3
DECLARE @usage Integer -- Int32
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

-- Firebird.3 Firebird3
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- Firebird.3 Firebird3
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- Firebird.3 Firebird3
DECLARE @usage Integer -- Int32
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

-- Firebird.3 Firebird3
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- Firebird.3 Firebird3
DECLARE @usage Integer -- Int32
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

-- Firebird.3 Firebird3
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

