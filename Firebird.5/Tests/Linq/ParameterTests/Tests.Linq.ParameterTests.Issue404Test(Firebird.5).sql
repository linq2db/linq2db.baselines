-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Usage

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Usage

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Usage

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Usage

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

