BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Mixed"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Mixed"
			(
				"Int"    Int                                    NOT NULL,
				"Str"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Date"   TimeStamp                              NOT NULL,
				"Double" Float                                  NOT NULL,
				"Bool"   BOOLEAN                                NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
SELECT 1,CAST('One' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('2001-01-01' AS timestamp),1,TRUE FROM rdb$database UNION ALL
SELECT 2,'Two',CAST('2002-02-02' AS timestamp),2,FALSE FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Mixed" "t"
WHERE
	"t"."Int" > 0 AND
	"t"."Str" = 'One' AND
	"t"."Double" = 1 AND
	"t"."Bool" = TRUE AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" "u"
		WHERE
			2 > "u"."Int" OR 2 = "u"."Int" AND "u"."Date" > "t"."Date"
	)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Mixed"';
END

