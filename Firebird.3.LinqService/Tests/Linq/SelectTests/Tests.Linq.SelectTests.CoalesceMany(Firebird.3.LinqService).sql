BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CoalesceNullableFields')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CoalesceNullableFields"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CoalesceNullableFields')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CoalesceNullableFields"
			(
				"Id"        Int NOT NULL,
				"Nullable1" Int,
				"Nullable2" Int,
				"Nullable3" Int,

				CONSTRAINT "PK_CoalesceNullableFields" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Nullable1 Integer -- Int32
SET     @Nullable1 = 10
DECLARE @Nullable2 Integer -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Integer -- Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Nullable1 Integer -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Integer -- Int32
SET     @Nullable2 = 20
DECLARE @Nullable3 Integer -- Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Nullable1 Integer -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Integer -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Integer -- Int32
SET     @Nullable3 = 30

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Nullable1 Integer -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Integer -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Integer -- Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Coalesce("t"."Nullable1", "t"."Nullable2", "t"."Nullable3", "t"."Id"),
	Coalesce("t"."Nullable2", "t"."Nullable1", "t"."Nullable3", "t"."Id"),
	Coalesce("t"."Nullable2", "t"."Nullable3", "t"."Nullable1", "t"."Id"),
	Coalesce("t"."Nullable3", "t"."Nullable1", "t"."Nullable2", "t"."Id"),
	Coalesce("t"."Nullable3", "t"."Nullable2", "t"."Nullable1", "t"."Id")
FROM
	"CoalesceNullableFields" "t"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Nullable1",
	"t1"."Nullable2",
	"t1"."Nullable3"
FROM
	"CoalesceNullableFields" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CoalesceNullableFields')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CoalesceNullableFields"';
END

