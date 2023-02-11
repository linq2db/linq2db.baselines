BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "BooleanTable"
		(
			"Id"             Int      NOT NULL,
			"Column"         smallint NOT NULL,
			"ColumnNullable" smallint     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,1,NULL),
(2,0,1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Column_1 SmallInt(4) -- Int16
SET     @Column_1 = 0
DECLARE @ColumnNullable SmallInt(4) -- Int16
SET     @ColumnNullable = 1

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = 0 AND "r"."ColumnNullable" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column_1 SmallInt(4) -- Int16
SET     @Column_1 = 1
DECLARE @ColumnNullable SmallInt -- Boolean
SET     @ColumnNullable = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column_1 SmallInt(4) -- Int16
SET     @Column_1 = 0
DECLARE @ColumnNullable SmallInt(4) -- Int16
SET     @ColumnNullable = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,1,NULL),
(2,0,1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
INSERT BULK "BooleanTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
END

