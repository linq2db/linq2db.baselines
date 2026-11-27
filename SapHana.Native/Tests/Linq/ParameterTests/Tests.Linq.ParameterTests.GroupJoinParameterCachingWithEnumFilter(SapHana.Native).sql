-- SapHana.Native SapHana
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- SapHana.Native SapHana
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
	"d"."Usage" = :"usage"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- SapHana.Native SapHana
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
	"d"."Usage" = :"usage"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- SapHana.Native SapHana
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"UsageOwner" "m_1"
		INNER JOIN "EnumUsageDetail" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- SapHana.Native SapHana
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
	"d"."Usage" = :"usage"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

-- SapHana.Native SapHana
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
	"d"."Usage" = :"usage"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"UsageOwner" "t1"

