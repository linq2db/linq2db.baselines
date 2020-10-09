BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Entity1711"
(
	"Id" BigInt NOT NULL,

	CONSTRAINT "PK_Entity1711" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Relationship1711"
(
	"EntityId" BigInt NOT NULL,
	"Deleted"  CHAR   NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			"Relationship1711" "r"
		WHERE
			"r"."Deleted" = 0 AND "r"."EntityId" = "t"."Id"
	)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Relationship1711"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Entity1711"

