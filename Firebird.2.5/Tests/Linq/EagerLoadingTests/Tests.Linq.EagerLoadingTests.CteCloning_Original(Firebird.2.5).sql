BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CteTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CteTable"
			(
				"Id"     Int NOT NULL,
				"Value1" Int NOT NULL,
				"Value2" Int NOT NULL,
				"Value3" Int NOT NULL,
				"Value4" Int NOT NULL,
				"Value5" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteChildTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CteChildTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteChildTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CteChildTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
		';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

WITH RECURSIVE "cte" ("Value2", "Value4")
AS
(
	SELECT
		"r"."Value2",
		"r"."Value4"
	FROM
		"CteTable" "r"
	UNION ALL
	SELECT
		"r_1"."Value2",
		"r_1"."Value4"
	FROM
		"cte" "t1"
			INNER JOIN "CteTable" "r_1" ON "t1"."Value2" = "r_1"."Value3"
)
SELECT
	"m_1"."Id",
	"d_1"."Id",
	"d_1"."Value1",
	"d_1"."Value2",
	"d_1"."Value3",
	"d_1"."Value4",
	"d_1"."Value5"
FROM
	(
		SELECT DISTINCT
			"d"."Id"
		FROM
			"cte" "t2"
				LEFT JOIN "CteChildTable" "d" ON "t2"."Value4" = "d"."Id"
	) "m_1"
		INNER JOIN "CteTable" "d_1" ON "m_1"."Id" = "d_1"."Value3"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

WITH RECURSIVE "cte"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4",
	"Value5"
)
AS
(
	SELECT
		"r"."Id",
		"r"."Value1",
		"r"."Value2",
		"r"."Value3",
		"r"."Value4",
		"r"."Value5"
	FROM
		"CteTable" "r"
	UNION ALL
	SELECT
		"r_1"."Id",
		"r_1"."Value1",
		"r_1"."Value2",
		"r_1"."Value3",
		"r_1"."Value4",
		"r_1"."Value5"
	FROM
		"cte" "t1"
			INNER JOIN "CteTable" "r_1" ON "t1"."Value2" = "r_1"."Value3"
)
SELECT
	"t2"."Id",
	"t2"."Value1",
	"t2"."Value2",
	"t2"."Value3",
	"t2"."Value4",
	"t2"."Value5",
	"d"."Id"
FROM
	"cte" "t2"
		LEFT JOIN "CteChildTable" "d" ON "t2"."Value4" = "d"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteChildTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CteChildTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CteTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CteTable"';
END

