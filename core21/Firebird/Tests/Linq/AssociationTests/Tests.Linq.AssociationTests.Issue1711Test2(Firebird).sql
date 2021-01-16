BeforeExecute
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

DROP TABLE "Relationship1711"

BeforeExecute
-- Firebird

DROP TABLE "Entity1711"

