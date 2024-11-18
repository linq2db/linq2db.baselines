BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Employee')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Employee"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Salary')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Salary"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

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
			*
		FROM
			"Issue4193Person" "p"
				INNER JOIN "Issue4193Employee" "r" ON "p"."EmployeeId" = "r"."Id"
		WHERE
			"Issue4193Person"."Name" = "p"."Name" AND ("Issue4193Person"."EmployeeId" = "p"."EmployeeId" OR "Issue4193Person"."EmployeeId" IS NULL AND "p"."EmployeeId" IS NULL)
	)
RETURNING
	"Issue4193Person"."EmployeeId"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Salary')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Salary"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Employee')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Employee"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4193Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4193Person"';
END

