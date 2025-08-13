BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

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

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

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

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

