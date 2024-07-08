BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CoalesceNullableFields')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CoalesceNullableFields"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
SELECT 1,10,NULL,NULL FROM rdb$database UNION ALL
SELECT 2,NULL,20,NULL FROM rdb$database UNION ALL
SELECT 3,NULL,NULL,30 FROM rdb$database UNION ALL
SELECT 4,NULL,NULL,NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Coalesce("t"."Nullable1", "t"."Nullable2", "t"."Nullable3", "t"."Id"),
	Coalesce("t"."Nullable2", "t"."Nullable1", "t"."Nullable3", "t"."Id"),
	Coalesce("t"."Nullable2", "t"."Nullable3", "t"."Nullable1", "t"."Id"),
	Coalesce("t"."Nullable3", "t"."Nullable1", "t"."Nullable2", "t"."Id"),
	Coalesce("t"."Nullable3", "t"."Nullable2", "t"."Nullable1", "t"."Id")
FROM
	"CoalesceNullableFields" "t"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Nullable1",
	"t1"."Nullable2",
	"t1"."Nullable3"
FROM
	"CoalesceNullableFields" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CoalesceNullableFields')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CoalesceNullableFields"';
END

