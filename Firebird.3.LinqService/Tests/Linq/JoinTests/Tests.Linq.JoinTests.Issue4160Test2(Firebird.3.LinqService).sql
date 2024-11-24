BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160Person"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4160Person"
			(
				"Code" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	@Code
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	@Code
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	@Code
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4160City"
			(
				"Code" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT DISTINCT
	"cc_1"."Value_1"
FROM
	"Issue4160Person" "t1"
		LEFT JOIN (
			SELECT
				"cc"."Name" as "Value_1",
				ROW_NUMBER() OVER (PARTITION BY "cc"."Code" ORDER BY "cc"."Code") as "rn",
				"cc"."Code"
			FROM
				"Issue4160City" "cc"
		) "cc_1" ON ("cc_1"."Code" = "t1"."Code" OR "cc_1"."Code" IS NULL AND "t1"."Code" IS NULL) AND "cc_1"."rn" <= 1

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160Person"';
END

