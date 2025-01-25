BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleClass"
			(
				"Id"     Int                                   NOT NULL,
				"Value1" VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value2" VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value3" VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value4" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = 'V1'
DECLARE @Value2 VarChar(2) -- String
SET     @Value2 = 'V2'
DECLARE @Value3 VarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- String
SET     @Value4 = 'V4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar(2) -- String
SET     @Value2 = 'Z2'
DECLARE @Value3 VarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar -- String
SET     @Value4 = NULL

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = 'Z1'
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Value3 VarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- String
SET     @Value4 = 'Z4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	LIST("t1"."Value4", ' -> ')
FROM
	"SampleClass" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

