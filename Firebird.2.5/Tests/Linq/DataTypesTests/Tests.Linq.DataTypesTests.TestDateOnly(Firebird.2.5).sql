-- Firebird.2.5 Firebird
DECLARE @Column Date
SET     @Column = DATE '2020-02-29'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = DATE '2020-01-01'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = DATE '2020-02-29' AND "r"."ColumnNullable" = DATE '2020-01-01'

-- Firebird.2.5 Firebird

DELETE FROM
	"DateOnlyTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = DATE '1980-01-01'
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = DATE '2020-02-29'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = DATE '2020-01-01'

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird

DELETE FROM
	"DateOnlyTable" "t1"

-- Firebird.2.5 Firebird

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,DATE '1980-01-01',NULL FROM rdb$database UNION ALL
SELECT 2,DATE '2020-02-29',DATE '2020-01-01' FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird

DELETE FROM
	"DateOnlyTable" "t1"

-- Firebird.2.5 Firebird

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,DATE '1980-01-01',NULL FROM rdb$database UNION ALL
SELECT 2,DATE '2020-02-29',DATE '2020-01-01' FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

