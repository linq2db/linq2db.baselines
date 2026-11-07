-- SapHana.Native SapHana
DECLARE @value Decimal(1, 0)
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
DECLARE @Column Decimal(1, 0)
SET     @Column = 0
DECLARE @ColumnNullable Decimal
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
DECLARE @value Decimal(1, 0)
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
DECLARE @Column Decimal(1, 0)
SET     @Column = 0
DECLARE @ColumnNullable Decimal
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
DECLARE @value Decimal(1, 0)
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
DECLARE @value Decimal(1, 0)
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
DECLARE @value Decimal(1, 0)
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
DECLARE @value Decimal(29, 10)
SET     @value = -7922816251426433759.3543950335
DECLARE @nullableValue Decimal(29, 10)
SET     @nullableValue = 7922816251426433759.3543950335

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
	"r"."Column" = -7922816251426433759.3543950335 AND
	"r"."ColumnNullable" = 7922816251426433759.3543950335

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Decimal(29, 10)
SET     @Column = -7922816251426433759.3543950335
DECLARE @ColumnNullable Decimal(29, 10)
SET     @ColumnNullable = 7922816251426433759.3543950335

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
DECLARE @value Decimal(29, 10)
SET     @value = -7922816251426433759.3543950335
DECLARE @nullableValue Decimal(29, 10)
SET     @nullableValue = 7922816251426433759.3543950335

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
DECLARE @Column Decimal(29, 10)
SET     @Column = -7922816251426433759.3543950335
DECLARE @ColumnNullable Decimal(29, 10)
SET     @ColumnNullable = 7922816251426433759.3543950335

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
DECLARE @value Decimal(29, 10)
SET     @value = -7922816251426433759.3543950335
DECLARE @nullableValue Decimal(29, 10)
SET     @nullableValue = 7922816251426433759.3543950335

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
DECLARE @value Decimal(29, 10)
SET     @value = -7922816251426433759.3543950335
DECLARE @nullableValue Decimal(29, 10)
SET     @nullableValue = 7922816251426433759.3543950335

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
DECLARE @value Decimal(29, 10)
SET     @value = -7922816251426433759.3543950335
DECLARE @nullableValue Decimal(29, 10)
SET     @nullableValue = 7922816251426433759.3543950335

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DECLARE @value Decimal
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
DECLARE @Column Decimal
SET     @Column = 0
DECLARE @ColumnNullable Decimal
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
DECLARE @value Decimal
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
DECLARE @Column Decimal
SET     @Column = 0
DECLARE @ColumnNullable Decimal
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
DECLARE @value Decimal
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
DECLARE @value Decimal
SET     @value = 1
DECLARE @nullableValue Decimal
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
DECLARE @Column Decimal
SET     @Column = 1
DECLARE @ColumnNullable Decimal
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
DECLARE @value Decimal
SET     @value = 1
DECLARE @nullableValue Decimal
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
DECLARE @Column Decimal
SET     @Column = 1
DECLARE @ColumnNullable Decimal
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
DECLARE @value Decimal
SET     @value = 1
DECLARE @nullableValue Decimal
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
DECLARE @value Decimal
SET     @value = 9999999999999999999999999999999999
DECLARE @nullableValue Decimal
SET     @nullableValue = -9999999999999999999999999999999999

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
	"r"."Column" = 9999999999999999999999999999999999 AND
	"r"."ColumnNullable" = -9999999999999999999999999999999999

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Decimal
SET     @Column = 9999999999999999999999999999999999
DECLARE @ColumnNullable Decimal
SET     @ColumnNullable = -9999999999999999999999999999999999

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
DECLARE @value Decimal
SET     @value = 9999999999999999999999999999999999
DECLARE @nullableValue Decimal
SET     @nullableValue = -9999999999999999999999999999999999

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
DECLARE @Column Decimal
SET     @Column = 9999999999999999999999999999999999
DECLARE @ColumnNullable Decimal
SET     @ColumnNullable = -9999999999999999999999999999999999

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
DECLARE @value Decimal
SET     @value = 9999999999999999999999999999999999
DECLARE @nullableValue Decimal
SET     @nullableValue = -9999999999999999999999999999999999

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

-- SapHana.Native SapHana
DECLARE @value Decimal
SET     @value = 99999999999999999999999999.99999999E-5000
DECLARE @nullableValue Decimal
SET     @nullableValue = -99999999999999999.99999999999999999E5000

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
	"r"."Column" = 99999999999999999999999999.99999999E-5000 AND
	"r"."ColumnNullable" = -99999999999999999.99999999999999999E5000

-- SapHana.Native SapHana
DELETE FROM
	"TypeTable`2" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Decimal
SET     @Column = 99999999999999999999999999.99999999E-5000
DECLARE @ColumnNullable Decimal
SET     @ColumnNullable = -99999999999999999.99999999999999999E5000

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
DECLARE @value Decimal
SET     @value = 99999999999999999999999999.99999999E-5000
DECLARE @nullableValue Decimal
SET     @nullableValue = -99999999999999999.99999999999999999E5000

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
DECLARE @Column Decimal
SET     @Column = 99999999999999999999999999.99999999E-5000
DECLARE @ColumnNullable Decimal
SET     @ColumnNullable = -99999999999999999.99999999999999999E5000

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
DECLARE @value Decimal
SET     @value = 99999999999999999999999999.99999999E-5000
DECLARE @nullableValue Decimal
SET     @nullableValue = -99999999999999999.99999999999999999E5000

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"TypeTable`2" "r"
WHERE
	"r"."Column" = :"value" AND "r"."ColumnNullable" = :"nullableValue"

