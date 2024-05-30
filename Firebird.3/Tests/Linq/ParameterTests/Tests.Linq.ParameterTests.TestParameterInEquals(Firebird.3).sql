﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEqualsTable1"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestEqualsTable1"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEqualsTable2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestEqualsTable2"
			(
				"Id" Int NOT NULL,
				FK   Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @param Integer -- Int32
SET     @param = 0

SELECT
	"t1"."Id"
FROM
	"TestEqualsTable1" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TestEqualsTable2" "t2"
		WHERE
			"t1"."Id" = "t2".FK AND "t2"."Id" = @param
	)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEqualsTable2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEqualsTable1"';
END

