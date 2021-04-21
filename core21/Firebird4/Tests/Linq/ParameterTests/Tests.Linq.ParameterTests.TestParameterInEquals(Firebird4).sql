BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	FK   Int
)

BeforeExecute
-- Firebird4 Firebird

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
			"t1"."Id" = "t2".FK AND "t2"."Id" IS NULL
	)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEqualsTable2"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEqualsTable1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEqualsTable1"';
END

