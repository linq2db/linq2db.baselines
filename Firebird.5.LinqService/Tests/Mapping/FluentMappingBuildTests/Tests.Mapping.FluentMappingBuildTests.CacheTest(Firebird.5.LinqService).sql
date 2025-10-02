BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FluentTemp"
			(
				ID         Int                                   NOT NULL,
				"Value"    VarChar(20) CHARACTER SET UNICODE_FSS,
				"LastName" VarChar(20) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Value",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t".ID,
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FluentTemp"
			(
				ID         Int                                   NOT NULL,
				"Value"    VarChar(20) CHARACTER SET UNICODE_FSS,
				"LastName" VarChar(20) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Value",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t".ID,
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FluentTemp"
			(
				ID         Int                                   NOT NULL,
				"Column"   VarChar(20) CHARACTER SET UNICODE_FSS,
				"LastName" VarChar(20) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Column",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t".ID,
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "FluentTemp"
			(
				ID         Int                                   NOT NULL,
				"Column"   VarChar(20) CHARACTER SET UNICODE_FSS,
				"LastName" VarChar(20) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	ID,
	"Column",
	"LastName"
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t".ID,
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'FluentTemp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "FluentTemp"';
END

