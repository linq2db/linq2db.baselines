BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Column Date
SET     @Column = CAST('2020-02-29' AS date)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2020-01-01' AS date)

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
	"r"."Column" = CAST('2020-02-29' AS date) AND "r"."ColumnNullable" = CAST('2020-01-01' AS date)

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = CAST('1980-01-01' AS date)
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

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = CAST('2020-02-29' AS date)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2020-01-01' AS date)

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
SELECT 1,CAST('1980-01-01' AS date),NULL FROM rdb$database UNION ALL
SELECT 2,CAST('2020-02-29' AS date),CAST('2020-01-01' AS date) FROM rdb$database

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
SELECT 1,CAST('1980-01-01' AS date),NULL FROM rdb$database UNION ALL
SELECT 2,CAST('2020-02-29' AS date),CAST('2020-01-01' AS date) FROM rdb$database

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

