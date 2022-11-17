BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DateOnlyTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "DateOnlyTable"
		(
			"ColumnNullable" Date     NULL,
			"Column"         Date NOT NULL,
			"Id"             Int  NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'1950-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Column_1 Date(20)
SET     @Column_1 = '2020-02-29-00.00.00.000000'
DECLARE @ColumnNullable Date(20)
SET     @ColumnNullable = '2200-01-01-00.00.00.000000'

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = '2020-02-29' AND "r"."ColumnNullable" = '2200-01-01'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date(20)
SET     @Column_1 = '1950-01-01-00.00.00.000000'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "DateOnlyTable"
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
DECLARE @ColumnNullable Date(20)
SET     @ColumnNullable = '2200-01-01-00.00.00.000000'
DECLARE @Column_1 Date(20)
SET     @Column_1 = '2020-02-29-00.00.00.000000'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "DateOnlyTable"
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
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "DateOnlyTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'1950-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
INSERT BULK "DateOnlyTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DateOnlyTable"';
END

