BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InstanceClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InstanceClass"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 101

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = 102

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = 103

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Integer -- Int32
SET     @Value = 104

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Integer -- Int32
SET     @Value = 105

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value Integer -- Int32
SET     @Value = 106

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value Integer -- Int32
SET     @Value = 107

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value Integer -- Int32
SET     @Value = 108

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value Integer -- Int32
SET     @Value = 109

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value Integer -- Int32
SET     @Value = 110

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @Value Integer -- Int32
SET     @Value = 111

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @Value Integer -- Int32
SET     @Value = 112

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @Value Integer -- Int32
SET     @Value = 113

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @Value Integer -- Int32
SET     @Value = 114

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @Value Integer -- Int32
SET     @Value = 115

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 16
DECLARE @Value Integer -- Int32
SET     @Value = 116

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 17
DECLARE @Value Integer -- Int32
SET     @Value = 117

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 18
DECLARE @Value Integer -- Int32
SET     @Value = 118

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 19
DECLARE @Value Integer -- Int32
SET     @Value = 119

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Value Integer -- Int32
SET     @Value = 120

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"InstanceClass" "t"
WHERE
	"t"."Id" || "t"."Value" = "t"."Id" || CAST("t"."Value" AS VarChar(11) CHARACTER SET UNICODE_FSS)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InstanceClass"';
END

