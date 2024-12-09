BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table1"
			(
				"Field1" Int NOT NULL,
				"Field2" Int NOT NULL,
				"Field3" Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table2"
			(
				"Field2" Int                                    NOT NULL,
				"Field4" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table3"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table3"
			(
				"Field5" Int NOT NULL,
				"Field1" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table4"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table4')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table4"
			(
				"Field5" Int NOT NULL,
				"Field6" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table5')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table5"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table5')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table5"
			(
				"Field3" Int,
				"Field7" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table6')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table6"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table6')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table6"
			(
				"Field7" Int                                    NOT NULL,
				"Field8" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT DISTINCT
	"a_Ref4"."Field6",
	"a_Ref3"."Field4",
	Coalesce("a_Ref5"."Field8", '')
FROM
	"Table1" "t1"
		INNER JOIN "Table3" "a_Ref1" ON "t1"."Field1" = "a_Ref1"."Field1"
		INNER JOIN "Table4" "a_Ref4" ON "a_Ref1"."Field5" = "a_Ref4"."Field5"
		LEFT JOIN "Table2" "a_Ref3" ON "t1"."Field2" = "a_Ref3"."Field2"
		LEFT JOIN "Table5" "a_Ref2" ON "t1"."Field3" = "a_Ref2"."Field3" OR "t1"."Field3" IS NULL AND "a_Ref2"."Field3" IS NULL
		LEFT JOIN "Table6" "a_Ref5" ON "a_Ref2"."Field7" = "a_Ref5"."Field7"
WHERE
	"t1"."Field3" IS NOT NULL

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"g_2"."Field6",
	"g_2"."Field4",
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"a_Ref4"."Field6",
			"a_Ref3"."Field4",
			Coalesce("a_Ref5"."Field8", '') as "Field1"
		FROM
			"Table1" "g_1"
				INNER JOIN "Table3" "a_Ref1" ON "g_1"."Field1" = "a_Ref1"."Field1"
				INNER JOIN "Table4" "a_Ref4" ON "a_Ref1"."Field5" = "a_Ref4"."Field5"
				LEFT JOIN "Table2" "a_Ref3" ON "g_1"."Field2" = "a_Ref3"."Field2"
				LEFT JOIN "Table5" "a_Ref2" ON "g_1"."Field3" = "a_Ref2"."Field3" OR "g_1"."Field3" IS NULL AND "a_Ref2"."Field3" IS NULL
				LEFT JOIN "Table6" "a_Ref5" ON "a_Ref2"."Field7" = "a_Ref5"."Field7"
		WHERE
			"g_1"."Field3" IS NOT NULL
	) "g_2"
GROUP BY
	"g_2"."Field6",
	"g_2"."Field4"
HAVING
	COUNT(*) > 1

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table6')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table6"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table5')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table5"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table4')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table4"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table3"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1"';
END

