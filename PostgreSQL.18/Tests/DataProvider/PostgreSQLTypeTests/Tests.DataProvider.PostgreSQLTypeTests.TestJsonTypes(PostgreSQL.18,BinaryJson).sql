-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = 'null'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = 'null'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = 'null'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = 'null'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'null'

SELECT
	r."Id",
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
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = 'true'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = 'false'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = 'true'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = 'false'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'true'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = 'false'

SELECT
	r."Id",
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
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = '12'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '-34'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '12'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = '-34'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '12'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '-34'

SELECT
	r."Id",
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
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = '-12e34'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '34.12'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '-12e34'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = '34.12'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Id",
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
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = '"тест"'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '""'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '"тест"'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = '""'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '""'

SELECT
	r."Id",
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
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = 'null'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = NULL

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = 'null'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = NULL

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" IS NULL

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = 'null'

SELECT
	r."Id",
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
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = '[1, 2, 3]'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '[true, false]'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '[1, 2, 3]'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = '[true, false]'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Id",
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
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Jsonb -- Object
SET     @Column = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @ColumnNullable Jsonb -- Object
SET     @ColumnNullable = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column,
	:ColumnNullable
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Id",
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
DECLARE @:p1 Integer -- Int32
SET     @:p1 = 1
DECLARE @:p2 Jsonb -- Object
SET     @:p2 = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @:p3 Jsonb -- Object
SET     @:p3 = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

INSERT INTO "TypeTable`2"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(:p1,:p2,:p3)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

INSERT ASYNC BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Jsonb -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Jsonb -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column" = :value AND r."ColumnNullable" = :nullableValue

