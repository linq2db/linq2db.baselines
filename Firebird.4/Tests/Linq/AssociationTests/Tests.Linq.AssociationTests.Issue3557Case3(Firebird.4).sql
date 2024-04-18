BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Data')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Data"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Data')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Data"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Data"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database UNION ALL
SELECT 3 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData1"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SubData1"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SubData1"
(
	"Id"
)
SELECT 2 FROM rdb$database UNION ALL
SELECT 3 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SubData2"
			(
				"Id"     Int                                    NOT NULL,
				"Reason" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
SELECT 3,CAST(_utf8 x'D0BFD180D181D18231' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 3,_utf8 x'D0BFD180D181D18232' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"i"."Id",
	"t1"."Reason",
	"t1"."is_empty"
FROM
	"Data" "i"
		LEFT JOIN "SubData1" "a_SubData" ON "i"."Id" = "a_SubData"."Id"
		LEFT JOIN LATERAL (
			SELECT
				"s"."Reason",
				1 as "is_empty"
			FROM
				"SubData2" "s"
			WHERE
				"a_SubData"."Id" = "s"."Id"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1
ORDER BY
	"i"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData1"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Data')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Data"';
END

