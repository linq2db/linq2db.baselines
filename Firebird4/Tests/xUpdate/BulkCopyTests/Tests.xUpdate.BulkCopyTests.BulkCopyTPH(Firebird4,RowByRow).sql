﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TPHTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TPHTable"
			(
				"Id"            Int                                   NOT NULL,
				"Discriminator" Int                                   NOT NULL,
				"Value1"        VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value2"        VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value3"        VarChar(50) CHARACTER SET UNICODE_FSS,
				"NullableBool"  VarChar(1) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TPHTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 1
DECLARE @Value1 VarChar(4) -- String
SET     @Value1 = 'Str1'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value1"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Discriminator AS Int),
	CAST(@Value1 AS VARCHAR(4))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 2
DECLARE @Value2 VarChar(4) -- String
SET     @Value2 = 'Str2'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value2"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Discriminator AS Int),
	CAST(@Value2 AS VARCHAR(4))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Discriminator Integer -- Int32
SET     @Discriminator = 3
DECLARE @Value3 VarChar(4) -- String
SET     @Value3 = 'Str3'
DECLARE @NullableBool VarChar(1) -- String
SET     @NullableBool = 'Y'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value3",
	"NullableBool"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Discriminator AS Int),
	CAST(@Value3 AS VARCHAR(4)),
	CAST(@NullableBool AS VarChar(1) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Discriminator",
	"t1"."Id",
	"t1"."Value3",
	"t1"."NullableBool",
	"t1"."Value2",
	"t1"."Value1"
FROM
	"TPHTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 1

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 2

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 3

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value1" = 'Str1'

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value2" = 'Str2'

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value3" = 'Str3'

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TPHTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TPHTable"';
END

