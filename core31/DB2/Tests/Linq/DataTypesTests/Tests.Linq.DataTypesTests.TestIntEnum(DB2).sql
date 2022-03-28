BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "IntEnumTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "IntEnumTable"
		(
			"ColumnNullable" Int     NULL,
			"Column"         Int NOT NULL,
			"Id"             Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"IntEnumTable" "r"
WHERE
	"r"."Column" = 2 AND "r"."ColumnNullable" = 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "IntEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"IntEnumTable" "t1"

BeforeExecute
INSERT BULK "IntEnumTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"IntEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "IntEnumTable"';
END

