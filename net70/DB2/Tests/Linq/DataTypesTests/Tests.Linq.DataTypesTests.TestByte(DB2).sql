BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ByteTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "ByteTable"
		(
			"ColumnNullable" SmallInt     NULL,
			"Column"         SmallInt NOT NULL,
			"Id"             Int      NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable SmallInt(2) -- Int16
SET     @ColumnNullable = 2

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"ByteTable" "r"
WHERE
	"r"."Column" = 255 AND "r"."ColumnNullable" = 2

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = NULL
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "ByteTable"
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
DECLARE @ColumnNullable SmallInt(2) -- Int16
SET     @ColumnNullable = 2
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 255
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "ByteTable"
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
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "ByteTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"ByteTable" "t1"

BeforeExecute
INSERT BULK "ByteTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"ByteTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "ByteTable"';
END

