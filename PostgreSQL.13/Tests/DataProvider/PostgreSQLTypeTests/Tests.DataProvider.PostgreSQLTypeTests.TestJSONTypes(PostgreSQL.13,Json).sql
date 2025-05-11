BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = 'null'::jsonb AND r."ColumnNullable"::jsonb = 'null'::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = 'null'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('null','null')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'true'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = 'true'::jsonb AND r."ColumnNullable"::jsonb = 'false'::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = 'true'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'true'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('true','false')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'true'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'true'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'true'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = 'false'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '12'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = '12'::jsonb AND r."ColumnNullable"::jsonb = '-34'::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = '12'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '12'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('12','-34')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '12'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '12'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '12'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '-34'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = '-12e34'::jsonb AND r."ColumnNullable"::jsonb = '34.12'::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = '-12e34'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('-12e34','34.12')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '-12e34'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '34.12'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = '"тест"'::jsonb AND r."ColumnNullable"::jsonb = '""'::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = '"тест"'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('"тест"','""')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '"тест"'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '""'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = 'null'::jsonb AND r."ColumnNullable" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = 'null'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('null',NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = 'null'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = '[1, 2, 3]'::jsonb AND r."ColumnNullable"::jsonb = '[true, false]'::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = '[1, 2, 3]'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('[1, 2, 3]','[true, false]')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '[1, 2, 3]'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '[true, false]'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'::jsonb AND
	r."ColumnNullable"::jsonb = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Column Json -- Object
SET     @Column = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @ColumnNullable Json -- Object
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TypeTable`2"
(
	"Column",
	"ColumnNullable"
)
VALUES
('{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}','{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DELETE FROM
	"TypeTable`2" t1

BeforeExecute
INSERT ASYNC BULK "TypeTable`2"(Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Json -- Object
SET     @value = '{"x": 1, "y": {"a": null, "b": "тест", "w": [1, null, "qqq", true], "z": true}}'
DECLARE @nullableValue Json -- Object
SET     @nullableValue = '{"4454": {"": true, "b": "тест", "w": [-1, false, "qqdfg q", true], "null": null}, "тест": 1}'

SELECT
	r."Column",
	r."ColumnNullable"
FROM
	"TypeTable`2" r
WHERE
	r."Column"::jsonb = :value::jsonb AND r."ColumnNullable"::jsonb = :nullableValue::jsonb

