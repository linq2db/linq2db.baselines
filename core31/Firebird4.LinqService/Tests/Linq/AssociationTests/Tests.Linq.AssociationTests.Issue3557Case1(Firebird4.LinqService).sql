BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Data')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Data"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData1"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData2"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"i"."Id",
	"a_SubData"."Id",
	(
		SELECT FIRST @take
			"s"."Reason"
		FROM
			"SubData2" "s"
		WHERE
			"a_SubData"."Id" = "s"."Id"
	)
FROM
	"Data" "i"
		LEFT JOIN "SubData1" "a_SubData" ON "i"."Id" = "a_SubData"."Id"
ORDER BY
	"i"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData2"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubData1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubData1"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Data')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Data"';
END

