﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4167Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4167Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4167Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4167Table"
			(
				ID          Int                                    NOT NULL,
				"Value"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"EnumValue" Int,

				CONSTRAINT "PK_Issue4167Table" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = 3

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = NULL

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @Value VarChar(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @default Integer -- Int32
SET     @default = 0

WITH CTE_1 ("EnumValue")
AS
(
	SELECT
		Coalesce("t"."EnumValue", Cast(@default as Int))
	FROM
		"Issue4167Table" "t"
	WHERE
		"t"."Value" = '000001'
	GROUP BY
		"t"."Value",
		"t"."EnumValue"
)
SELECT
	"r"."EnumValue"
FROM
	CTE_1 "r"
ORDER BY
	"r"."EnumValue"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4167Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4167Table"';
END

