BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_BaseThing')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4364_BaseThing"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_BaseThing')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4364_BaseThing"
			(
				"Id"                Int NOT NULL,
				"Type"              Int NOT NULL,
				"BaseField"         Int NOT NULL,
				"ConcreteField"     Int,
				"IntermediateField" Int,

				CONSTRAINT "PK_Issue4364_BaseThing" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Issue4364_BaseThing"
(
	"Id",
	"Type",
	"BaseField",
	"ConcreteField",
	"IntermediateField"
)
SELECT 1,1,2,0,0 FROM rdb$database UNION ALL
SELECT 2,2,3,4,0 FROM rdb$database UNION ALL
SELECT 3,101,4,0,6 FROM rdb$database UNION ALL
SELECT 4,102,5,0,0 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4364_Person"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_Person')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4364_Person"
			(
				"Id"       Int                                    NOT NULL,
				"FullName" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Issue4364_Person" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
SELECT 1,CAST('Person 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Person 2' FROM rdb$database UNION ALL
SELECT 3,'Person 3' FROM rdb$database UNION ALL
SELECT 4,'Person 4' FROM rdb$database UNION ALL
SELECT 5,'Person 5' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_Interaction')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4364_Interaction"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_Interaction')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4364_Interaction"
			(
				"Id"       Int NOT NULL,
				"PersonId" Int NOT NULL,
				"ThingId"  Int NOT NULL,

				CONSTRAINT "PK_Issue4364_Interaction" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Issue4364_Interaction"
(
	"Id",
	"PersonId",
	"ThingId"
)
SELECT 1,2,3 FROM rdb$database UNION ALL
SELECT 2,3,4 FROM rdb$database UNION ALL
SELECT 3,4,1 FROM rdb$database UNION ALL
SELECT 4,1,2 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"b"."Type",
	"p"."FullName"
FROM
	"Issue4364_BaseThing" "b"
		INNER JOIN "Issue4364_Interaction" "i" ON "b"."Id" = "i"."ThingId"
		INNER JOIN "Issue4364_Person" "p" ON "i"."PersonId" = "p"."Id"
WHERE
	"b"."Type" = 101 OR "b"."Type" = 102
ORDER BY
	"b"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_Interaction')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4364_Interaction"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4364_Person"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4364_BaseThing')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4364_BaseThing"';
END

