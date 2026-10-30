-- SapHana.Native SapHana
DECLARE @value SmallDecimal(1, 0) -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = 0 AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal(1, 0) -- Decimal
SET     @Column = 0
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = NULL

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal(1, 0) -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal(1, 0) -- Decimal
SET     @Column = 0
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = NULL

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal(1, 0) -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

INSERT BULK "TypeTable`2"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(1, 0) -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

INSERT BULK "TypeTable`2"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(1, 0) -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(16, 0) -- Decimal
SET     @value = 9999999999999999
DECLARE @nullableValue SmallDecimal(16, 0) -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = 9999999999999999 AND "r"."ColumnNullable" = -9999999999999999

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal(16, 0) -- Decimal
SET     @Column = 9999999999999999
DECLARE @ColumnNullable SmallDecimal(16, 0) -- Decimal
SET     @ColumnNullable = -9999999999999999

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal(16, 0) -- Decimal
SET     @value = 9999999999999999
DECLARE @nullableValue SmallDecimal(16, 0) -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal(16, 0) -- Decimal
SET     @Column = 9999999999999999
DECLARE @ColumnNullable SmallDecimal(16, 0) -- Decimal
SET     @ColumnNullable = -9999999999999999

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal(16, 0) -- Decimal
SET     @value = 9999999999999999
DECLARE @nullableValue SmallDecimal(16, 0) -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

INSERT BULK "TypeTable`2"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(16, 0) -- Decimal
SET     @value = 9999999999999999
DECLARE @nullableValue SmallDecimal(16, 0) -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

INSERT BULK "TypeTable`2"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(16, 0) -- Decimal
SET     @value = 9999999999999999
DECLARE @nullableValue SmallDecimal(16, 0) -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(16, 5) -- Decimal
SET     @value = 99999999999.99999
DECLARE @nullableValue SmallDecimal(16, 4) -- Decimal
SET     @nullableValue = -999999999999.9999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = 99999999999.99999 AND "r"."ColumnNullable" = -999999999999.9999

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal(16, 5) -- Decimal
SET     @Column = 99999999999.99999
DECLARE @ColumnNullable SmallDecimal(16, 4) -- Decimal
SET     @ColumnNullable = -999999999999.9999

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal(16, 5) -- Decimal
SET     @value = 99999999999.99999
DECLARE @nullableValue SmallDecimal(16, 4) -- Decimal
SET     @nullableValue = -999999999999.9999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal(16, 5) -- Decimal
SET     @Column = 99999999999.99999
DECLARE @ColumnNullable SmallDecimal(16, 4) -- Decimal
SET     @ColumnNullable = -999999999999.9999

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal(16, 5) -- Decimal
SET     @value = 99999999999.99999
DECLARE @nullableValue SmallDecimal(16, 4) -- Decimal
SET     @nullableValue = -999999999999.9999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

INSERT BULK "TypeTable`2"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(16, 5) -- Decimal
SET     @value = 99999999999.99999
DECLARE @nullableValue SmallDecimal(16, 4) -- Decimal
SET     @nullableValue = -999999999999.9999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

INSERT BULK "TypeTable`2"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal(16, 5) -- Decimal
SET     @value = 99999999999.99999
DECLARE @nullableValue SmallDecimal(16, 4) -- Decimal
SET     @nullableValue = -999999999999.9999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = 0 AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = 0
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = NULL

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = 0
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = NULL

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" IS NULL

-- SapHana.Native SapHana
DECLARE @value SmallDecimal -- Decimal
SET     @value = 1
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = 1 AND "r"."ColumnNullable" = 0

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = 1
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = 0

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = 1
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = 1
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = 0

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = 1
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = 0

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal -- Decimal
SET     @value = -9999999999999999
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = -9999999999999999 AND "r"."ColumnNullable" = -9999999999999999

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = -9999999999999999
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = -9999999999999999

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = -9999999999999999
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = -9999999999999999
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = -9999999999999999

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = -9999999999999999
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = -9999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DECLARE @value SmallDecimal -- Decimal
SET     @value = 0.9999999999999999E-349
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = -9.999999999999999E348

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = 0.9999999999999999E-349 AND "r"."ColumnNullable" = -9.999999999999999E348

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = 0.9999999999999999E-349
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = -9.999999999999999E348

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = 0.9999999999999999E-349
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = -9.999999999999999E348

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column SmallDecimal -- Decimal
SET     @Column = 0.9999999999999999E-349
DECLARE @ColumnNullable SmallDecimal -- Decimal
SET     @ColumnNullable = -9.999999999999999E348

INSERT INTO "TypeTable`2"
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
DECLARE @value SmallDecimal -- Decimal
SET     @value = 0.9999999999999999E-349
DECLARE @nullableValue SmallDecimal -- Decimal
SET     @nullableValue = -9.999999999999999E348

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

