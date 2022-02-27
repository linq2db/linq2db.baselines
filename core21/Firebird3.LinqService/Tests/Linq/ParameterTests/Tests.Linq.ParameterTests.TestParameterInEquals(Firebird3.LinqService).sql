BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	FK   Int
)

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

DROP TABLE "TestEqualsTable2"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TestEqualsTable1"

