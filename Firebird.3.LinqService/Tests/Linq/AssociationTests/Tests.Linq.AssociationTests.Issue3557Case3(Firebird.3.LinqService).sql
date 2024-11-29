BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Data')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Data"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Data"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "Data"
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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData1"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "SubData1"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "SubData1"
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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData2"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Reason VarChar(5) -- String
SET     @Reason = _utf8 x'D0BFD180D181D18231'

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(
	@Id,
	@Reason
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Reason VarChar(5) -- String
SET     @Reason = _utf8 x'D0BFD180D181D18232'

INSERT INTO "SubData2"
(
	"Id",
	"Reason"
)
VALUES
(
	@Id,
	@Reason
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"i"."Id",
	(
		SELECT
			"a_SubDatas"."Reason"
		FROM
			"SubData2" "a_SubDatas"
		WHERE
			"a_SubData"."Id" = "a_SubDatas"."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Data" "i"
		LEFT JOIN "SubData1" "a_SubData" ON "i"."Id" = "a_SubData"."Id"
ORDER BY
	"i"."Id"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData1"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Data')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Data"';
END

