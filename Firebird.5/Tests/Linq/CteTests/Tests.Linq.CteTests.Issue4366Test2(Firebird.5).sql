BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dto')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Dto"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dto')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Dto"
			(
				"id"        Int                                    NOT NULL,
				"name"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"parent_id" Int,
				"FullName"  VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

WITH RECURSIVE "d"
(
	"FullName",
	"Dto_id",
	"Dto_name",
	"Dto_parent_id",
	"Dto_FullName"
)
AS
(
	SELECT
		"a"."name",
		"a"."id",
		"a"."name",
		"a"."parent_id",
		"a"."FullName"
	FROM
		"Dto" "a"
	WHERE
		"a"."parent_id" IS NULL
	UNION ALL
	SELECT
		"recur"."FullName" || ' > ' || "t1"."name",
		"t1"."id",
		"t1"."name",
		"t1"."parent_id",
		"t1"."FullName"
	FROM
		"Dto" "t1"
			INNER JOIN "d" "recur" ON "recur"."Dto_id" = "t1"."parent_id" AND "t1"."parent_id" IS NOT NULL
)
SELECT
	"t2"."Dto_id",
	"t2"."Dto_name",
	"t2"."Dto_parent_id",
	"t2"."Dto_FullName",
	"t2"."FullName"
FROM
	"d" "t2"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dto')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Dto"';
END

