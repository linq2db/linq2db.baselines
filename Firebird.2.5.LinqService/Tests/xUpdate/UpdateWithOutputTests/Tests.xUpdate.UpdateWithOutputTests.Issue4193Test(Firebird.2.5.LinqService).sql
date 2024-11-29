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
DECLARE @Name VarChar(3) -- String
SET     @Name = 'foo'
DECLARE @EmployeeId Integer -- Int32
SET     @EmployeeId = 1

INSERT INTO "Issue4193Person"
(
	"Name",
	"EmployeeId"
)
VALUES
(
	@Name,
	@EmployeeId
)

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
DECLARE @SalaryId Integer -- Int32
SET     @SalaryId = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Issue4193Employee"
(
	"SalaryId",
	"Id"
)
VALUES
(
	@SalaryId,
	@Id
)

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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Amount Integer -- Int32
SET     @Amount = 10

INSERT INTO "Issue4193Salary"
(
	"Id",
	"Amount"
)
VALUES
(
	@Id,
	@Amount
)

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"Issue4193Salary"
SET
	"Amount" = "Issue4193Salary"."Amount" + 15
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue4193Person" "e"
				LEFT JOIN "Issue4193Employee" "a_Employee" ON "e"."EmployeeId" = "a_Employee"."Id"
				LEFT JOIN "Issue4193Salary" "a_Salary" ON "a_Employee"."SalaryId" = "a_Salary"."Id"
		WHERE
			"e"."Name" = 'foo' AND "Issue4193Salary"."Id" = "a_Salary"."Id"
	)
RETURNING
	NEW."Amount"

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

