﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DateOnlyTable"
			(
				"Id"             Int  NOT NULL,
				"Column"         Date NOT NULL,
				"ColumnNullable" Date
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,CAST('1950-01-01' AS date),NULL FROM rdb$database UNION ALL
SELECT 2,CAST('2020-02-29' AS date),CAST('2200-01-01' AS date) FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Column Date
SET     @Column = CAST('2020-02-29' AS date)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01' AS date)

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = CAST('2020-02-29' AS date) AND "r"."ColumnNullable" = CAST('2200-01-01' AS date)

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = CAST('1950-01-01' AS date)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Column AS Date),
	CAST(@ColumnNullable AS Date)
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = CAST('2020-02-29' AS date)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01' AS date)

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Column AS Date),
	CAST(@ColumnNullable AS Date)
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,CAST('1950-01-01' AS date),NULL FROM rdb$database UNION ALL
SELECT 2,CAST('2020-02-29' AS date),CAST('2200-01-01' AS date) FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,CAST('1950-01-01' AS date),NULL FROM rdb$database UNION ALL
SELECT 2,CAST('2020-02-29' AS date),CAST('2200-01-01' AS date) FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

