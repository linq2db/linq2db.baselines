﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Fact"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Tag"
			(
				"Id"     Int                                    NOT NULL,
				"FactId" Int                                    NOT NULL,
				"Name"   VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FactId Integer -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FactId Integer -- Int32
SET     @FactId = 4
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag4'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FactId Integer -- Int32
SET     @FactId = 6
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag6'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"fact_1"."Id",
	"t1"."Id",
	"t1"."FactId",
	"t1"."Name"
FROM
	"Tag" "t1"
		FULL JOIN "Fact" "fact_1" ON "t1"."FactId" = "fact_1"."Id"
WHERE
	"fact_1"."Id" > 3 OR "t1"."FactId" > 3

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tag')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tag"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Fact')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Fact"';
END

