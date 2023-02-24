BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InstanceClass"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 101

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 102

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 103

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 104

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 105

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 106

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 107

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 108

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 109

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 110

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 111

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 112

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 113

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 114

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 115

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 16
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 116

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 17
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 117

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 18
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 118

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 19
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 119

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 120

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"InstanceClass" "t"
WHERE
	Cast("t"."Id" as VarChar(11) CHARACTER SET UNICODE_FSS) || Cast("t"."Value" as VarChar(11) CHARACTER SET UNICODE_FSS) = Cast("t"."Id" as VarChar(11) CHARACTER SET UNICODE_FSS) || Cast("t"."Value" as VarChar(11) CHARACTER SET UNICODE_FSS)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InstanceClass"';
END

