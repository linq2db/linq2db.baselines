﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1788')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1788"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1788')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table1788"
			(
				"Id"     Int NOT NULL,
				"Value1" Int NOT NULL,

				CONSTRAINT "PK_Table1788" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 22

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 33

INSERT INTO "Table1788"
(
	"Id",
	"Value1"
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"Table1788" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Boolean
SET     @p = FALSE

SELECT
	CASE
		WHEN "l_1"."Id" IS NOT NULL THEN "l_1"."HasValue"
		ELSE CAST(@p AS BOOLEAN)
	END,
	"l_1"."Value1"
FROM
	"Table1788" "p"
		LEFT JOIN (
			SELECT
				CASE
					WHEN "l"."Value1" IS NOT NULL THEN CASE
						WHEN "l"."Value1" IS NOT NULL THEN TRUE
						ELSE FALSE
					END
					ELSE FALSE
				END as "HasValue",
				"l"."Id",
				"l"."Value1"
			FROM
				"Table1788" "l"
		) "l_1" ON "l_1"."Id" = "p"."Id" + 1

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table1788')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table1788"';
END

