BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StringEnumTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "StringEnumTable"
		(
			"ColumnNullable" NVarChar(8)     NULL,
			"Column"         NVarChar(8) NOT NULL,
			"Id"             Int         NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."ColumnNullable",
	"r"."Column",
	"r"."Id"
FROM
	"StringEnumTable" "r"
WHERE
	"r"."Column" = 'value=2' AND "r"."ColumnNullable" = 'value=33'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "StringEnumTable"
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
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "StringEnumTable"
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
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "StringEnumTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"StringEnumTable" "t1"

BeforeExecute
INSERT BULK "StringEnumTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ColumnNullable",
	"t1"."Column",
	"t1"."Id"
FROM
	"StringEnumTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StringEnumTable"';
END

