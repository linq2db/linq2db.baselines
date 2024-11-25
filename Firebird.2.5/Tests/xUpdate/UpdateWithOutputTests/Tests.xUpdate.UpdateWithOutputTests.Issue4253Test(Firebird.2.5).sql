BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4193Person"
			(
				"Name"       VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"EmployeeId" Int
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4193Person"
(
	"Name",
	"EmployeeId"
)
SELECT CAST('foo' AS VarChar(255) CHARACTER SET UNICODE_FSS),1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Employee')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Employee"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Employee')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4193Employee"
			(
				"SalaryId" Int NOT NULL,
				"Id"       Int NOT NULL,

				CONSTRAINT "PK_Issue4193Employee" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4193Employee"
(
	"SalaryId",
	"Id"
)
SELECT 1,1 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Salary')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Salary"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Salary')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4193Salary"
			(
				"Id"     Int NOT NULL,
				"Amount" Int,

				CONSTRAINT "PK_Issue4193Salary" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4193Salary"
(
	"Id",
	"Amount"
)
SELECT 1,10 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"Issue4193Person"
SET
	"Name" = (
		SELECT
			"Issue4193Person"."Name" || CAST("r_1"."SalaryId" AS VarChar(11) CHARACTER SET UNICODE_FSS)
		FROM
			"Issue4193Person" "p_1"
				INNER JOIN "Issue4193Employee" "r_1" ON "p_1"."EmployeeId" = "r_1"."Id"
		WHERE
			"Issue4193Person"."Name" = "p_1"."Name" AND ("Issue4193Person"."EmployeeId" = "p_1"."EmployeeId" OR "Issue4193Person"."EmployeeId" IS NULL AND "p_1"."EmployeeId" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Issue4193Person" "p"
				INNER JOIN "Issue4193Employee" "r" ON "p"."EmployeeId" = "r"."Id"
		WHERE
			"Issue4193Person"."Name" = "p"."Name" AND ("Issue4193Person"."EmployeeId" = "p"."EmployeeId" OR "Issue4193Person"."EmployeeId" IS NULL AND "p"."EmployeeId" IS NULL)
	)
RETURNING
	NEW."EmployeeId"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Salary')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Salary"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Employee')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Employee"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

