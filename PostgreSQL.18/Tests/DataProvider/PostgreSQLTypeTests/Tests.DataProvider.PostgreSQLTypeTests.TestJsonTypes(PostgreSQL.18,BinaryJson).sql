-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 'null' AND r."ColumnNullable" = 'null'

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = 'null'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = 'null'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = 'null'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = 'null'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 'true' AND r."ColumnNullable" = 'false'

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = 'true'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = 'false'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = 'true'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = 'false'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '12' AND r."ColumnNullable" = '-34'

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = '12'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '-34'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = '12'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '-34'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '-12e34' AND r."ColumnNullable" = '34.12'

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = '-12e34'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '34.12'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = '-12e34'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '34.12'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '"тест"' AND r."ColumnNullable" = '""'

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = '"тест"'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '""'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = '"тест"'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '""'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 'null' AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = 'null'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = NULL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = 'null'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = NULL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '[1, 2, 3]' AND r."ColumnNullable" = '[true, false]'

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = '[1, 2, 3]'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '[true, false]'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = '[1, 2, 3]'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '[true, false]'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}' AND
	r."ColumnNullable" = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @Column Jsonb -- Object
SET     @Column = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

-- PostgreSQL.18 PostgreSQL
DECLARE @:p1 Jsonb -- Object
SET     @:p1 = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

