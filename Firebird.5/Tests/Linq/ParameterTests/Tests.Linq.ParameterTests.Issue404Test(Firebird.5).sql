-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @cond Integer -- Int32
SET     @cond = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @cond Integer -- Int32
SET     @cond = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

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
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @cond Integer -- Int32
SET     @cond = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- Firebird.5 Firebird4
DECLARE @cond Integer -- Int32
SET     @cond = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @cond

-- Firebird.5 Firebird4

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

