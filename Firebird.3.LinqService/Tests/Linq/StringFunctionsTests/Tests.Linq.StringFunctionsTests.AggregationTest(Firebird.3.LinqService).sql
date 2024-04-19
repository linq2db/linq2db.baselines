﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
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
	CAST(@Id AS Int),
	CAST(@Value1 AS VARCHAR(2)),
	CAST(@Value2 AS VARCHAR(2)),
	CAST(@Value3 AS VarChar(50) CHARACTER SET UNICODE_FSS),
	CAST(@Value4 AS VARCHAR(2))
)

BeforeExecute
-- Firebird.3 Firebird3
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
	CAST(@Id AS Int),
	CAST(@Value1 AS VARCHAR(8191)),
	CAST(@Value2 AS VARCHAR(2)),
	CAST(@Value3 AS VarChar(50) CHARACTER SET UNICODE_FSS),
	CAST(@Value4 AS VARCHAR(8191))
)

BeforeExecute
-- Firebird.3 Firebird3
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
	CAST(@Id AS Int),
	CAST(@Value1 AS VARCHAR(2)),
	CAST(@Value2 AS VARCHAR(8191)),
	CAST(@Value3 AS VarChar(50) CHARACTER SET UNICODE_FSS),
	CAST(@Value4 AS VARCHAR(2))
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	MAX("g_1"."Value1"),
	LIST("g_1"."Value1", ' -> ')
FROM
	"SampleClass" "g_1"
GROUP BY
	"g_1"."Id",
	"g_1"."Value1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

