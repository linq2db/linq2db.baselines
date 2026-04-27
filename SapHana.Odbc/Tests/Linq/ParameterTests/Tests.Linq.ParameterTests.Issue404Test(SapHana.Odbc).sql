-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	"Table404One" "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

