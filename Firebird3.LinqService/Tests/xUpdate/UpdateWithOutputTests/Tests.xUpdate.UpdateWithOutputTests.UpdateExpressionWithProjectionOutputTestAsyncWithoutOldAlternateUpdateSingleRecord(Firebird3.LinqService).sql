﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableWithData"
			(
				"Id"       Int                                   NOT NULL,
				"Value"    Int                                   NOT NULL,
				"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = -1
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str1'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = -2
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str2'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = -3
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str3'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Integer -- Int32
SET     @Value = -4
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str4'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Integer -- Int32
SET     @Value = -5
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str5'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value Integer -- Int32
SET     @Value = -6
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str6'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value Integer -- Int32
SET     @Value = -7
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str7'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value Integer -- Int32
SET     @Value = -8
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str8'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value Integer -- Int32
SET     @Value = -9
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str9'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DestinationTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DestinationTable"
			(
				"Id"       Int                                   NOT NULL,
				"Value"    Int                                   NOT NULL,
				"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 0
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = '0Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = -1
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-1Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = -2
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-2Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Integer -- Int32
SET     @Value = -3
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-3Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Integer -- Int32
SET     @Value = -4
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-4Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value Integer -- Int32
SET     @Value = -5
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-5Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value Integer -- Int32
SET     @Value = -6
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-6Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value Integer -- Int32
SET     @Value = -7
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-7Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value Integer -- Int32
SET     @Value = -8
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-8Dst'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS Int),
	CAST(@ValueStr AS VARCHAR(5))
)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DestinationTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

