BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dto')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Dto"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

WITH RECURSIVE "d"
(
	"FullName",
	"id",
	"parent_id",
	"name"
)
AS
(
	SELECT
		"a"."name",
		"a"."id",
		"a"."parent_id",
		"a"."name"
	FROM
		"Dto" "a"
	WHERE
		"a"."parent_id" IS NULL
	UNION ALL
	SELECT
		"recur"."FullName" || ' > ' || "t1"."name",
		"t1"."id",
		"t1"."parent_id",
		"t1"."name"
	FROM
		"Dto" "t1"
			INNER JOIN "d" "recur" ON "recur"."id" = "t1"."parent_id" AND "t1"."parent_id" IS NOT NULL
)
SELECT
	"t2"."id",
	"t2"."parent_id",
	"t2"."name",
	"t2"."FullName"
FROM
	"d" "t2"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Dto')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Dto"';
END

