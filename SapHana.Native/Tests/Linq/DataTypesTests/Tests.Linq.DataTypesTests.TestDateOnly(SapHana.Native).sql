-- SapHana.Native SapHana
DECLARE @Column Date
SET     @Column = TIMESTAMP '2020-02-29 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2020-01-01 00:00:00.0000000'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = :"Column" AND "r"."ColumnNullable" = :"ColumnNullable"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = '2020-02-29' AND "r"."ColumnNullable" = '2020-01-01'

-- SapHana.Native SapHana
DELETE FROM
	"DateOnlyTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = TIMESTAMP '1980-01-01 00:00:00.0000000'
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
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = TIMESTAMP '2020-02-29 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2020-01-01 00:00:00.0000000'

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"DateOnlyTable" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = TIMESTAMP '1980-01-01 00:00:00.0000000'
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
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = TIMESTAMP '2020-02-29 00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = TIMESTAMP '2020-01-01 00:00:00.0000000'

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:"Id",
	:"Column",
	:"ColumnNullable"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"DateOnlyTable" "t1"

INSERT BULK "DateOnlyTable"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

