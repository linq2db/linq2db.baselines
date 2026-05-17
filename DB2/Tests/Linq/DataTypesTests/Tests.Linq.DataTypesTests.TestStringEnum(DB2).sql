-- DB2 DB2.LUW DB2LUW
DECLARE @Column VarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = 'value=2' AND "r"."ColumnNullable" = 'value=33'

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"StringEnumTable" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column VarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO "StringEnumTable"
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column VarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO "StringEnumTable"
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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"StringEnumTable" "t1"

-- DB2 DB2.LUW DB2LUW

INSERT INTO "StringEnumTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"StringEnumTable" "t1"

INSERT BULK "StringEnumTable"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

