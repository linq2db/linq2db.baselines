BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160Person"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4

SELECT DISTINCT
	(
		SELECT
			"cc"."Name"
		FROM
			"Issue4160City" "cc"
		WHERE
			"cc"."Code" = "pe"."Code" AND "cc"."Code" IS NOT NULL AND "pe"."Code" IS NOT NULL OR
			"cc"."Code" IS NULL AND "pe"."Code" IS NULL
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue4160Person" "pe"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160City')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4160Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4160Person"';
END

