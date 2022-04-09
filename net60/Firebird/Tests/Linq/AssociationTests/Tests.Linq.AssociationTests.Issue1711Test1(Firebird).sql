﻿BeforeExecute
-- Firebird

CREATE TABLE "Entity1711"
(
	"Id" BigInt NOT NULL,

	CONSTRAINT "PK_Entity1711" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE TABLE "Relationship1711"
(
	"EntityId" BigInt NOT NULL,
	"Deleted"  CHAR   NOT NULL
)

BeforeExecute
-- Firebird

SELECT
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" "t1"
		WHERE
			"t"."Id" = "t1"."EntityId"
	)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Relationship1711')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Relationship1711"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entity1711')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Entity1711"';
END

