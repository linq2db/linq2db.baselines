BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2933Car"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Car')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2933Car"
			(
				"PersonId" Int,
				"Id"       Int NOT NULL,

				CONSTRAINT "PK_Issue2933Car" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @PersonId Integer -- Int32
SET     @PersonId = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2933Person"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Person')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2933Person"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Issue2933Person" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Person"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Pet')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2933Pet"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Pet')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2933Pet"
			(
				"Name"     VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"Id"       Int                                    NOT NULL,
				"PersonId" Int                                    NOT NULL,

				CONSTRAINT "PK_Issue2933Pet" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	(
		SELECT
			"a_PetIds"."Name"
		FROM
			"Issue2933Pet" "a_PetIds"
		WHERE
			"a_Person"."Id" = "a_PetIds"."PersonId"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue2933Car" "x"
		LEFT JOIN "Issue2933Person" "a_Person" ON "x"."PersonId" = "a_Person"."Id" AND "x"."PersonId" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Pet')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2933Pet"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Person')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2933Person"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2933Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2933Car"';
END

