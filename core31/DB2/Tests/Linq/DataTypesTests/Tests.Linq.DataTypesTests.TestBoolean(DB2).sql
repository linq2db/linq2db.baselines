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
			"ColumnNullable" smallint     NULL,
			"Column"         smallint NOT NULL,
			"Id"             Int      NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "BooleanTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(1,0,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Column_1 SmallInt(4) -- Int16
SET     @Column_1 = 0
DECLARE @ColumnNullable SmallInt(4) -- Int16
SET     @ColumnNullable = 1

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
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
DECLARE @ColumnNullable SmallInt -- Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 SmallInt(4) -- Int16
SET     @Column_1 = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "BooleanTable"
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
DECLARE @ColumnNullable SmallInt(4) -- Int16
SET     @ColumnNullable = 1
DECLARE @Column_1 SmallInt(4) -- Int16
SET     @Column_1 = 0
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "BooleanTable"
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
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(1,0,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
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
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
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

