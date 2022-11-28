BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DateOnlyTable"
			(
				"ColumnNullable" Date,
				"Column"         Date NOT NULL,
				"Id"             Int  NOT NULL
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,CAST('1950-01-01' AS date),1 FROM rdb$database UNION ALL
SELECT CAST('2200-01-01' AS date),CAST('2020-02-29' AS date),2 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @Column_1 Date
SET     @Column_1 = CAST('2020-02-29' AS date)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01' AS date)

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = CAST('2020-02-29' AS date) AND "r"."ColumnNullable" = CAST('2200-01-01' AS date)

BeforeExecute
-- Firebird

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = CAST('1950-01-01' AS date)
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Firebird
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01' AS date)
DECLARE @Column_1 Date
SET     @Column_1 = CAST('2020-02-29' AS date)
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,CAST('1950-01-01' AS date),1 FROM rdb$database UNION ALL
SELECT CAST('2200-01-01' AS date),CAST('2020-02-29' AS date),2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
SELECT NULL,CAST('1950-01-01' AS date),1 FROM rdb$database UNION ALL
SELECT CAST('2200-01-01' AS date),CAST('2020-02-29' AS date),2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

