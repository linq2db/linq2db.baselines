BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Column Integer -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = 2 AND "r"."ColumnNullable" = 3

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Integer -- Int32
SET     @Column = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO "IntEnumTable"
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
DECLARE @Column Integer -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

INSERT INTO "IntEnumTable"
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
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "IntEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,2,3 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "IntEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,1,NULL FROM rdb$database UNION ALL
SELECT 2,2,3 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

