﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Column Date(20)
SET     @Column = '2020-02-29-00.00.00.000000'
DECLARE @ColumnNullable Date(20)
SET     @ColumnNullable = '2200-01-01-00.00.00.000000'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"DateOnlyTable" "r"
WHERE
	"r"."Column" = '2020-02-29' AND "r"."ColumnNullable" = '2200-01-01'

BeforeExecute
--  DB2 DB2.LUW DB2LUW

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Date(20)
SET     @Column = '1950-01-01-00.00.00.000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO "DateOnlyTable"
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
--  DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column Date(20)
SET     @Column = '2020-02-29-00.00.00.000000'
DECLARE @ColumnNullable Date(20)
SET     @ColumnNullable = '2200-01-01-00.00.00.000000'

INSERT INTO "DateOnlyTable"
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
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO "DateOnlyTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'1950-01-01',NULL),
(2,'2020-02-29','2200-01-01')

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

DELETE FROM
	"DateOnlyTable" "t1"

BeforeExecute
INSERT BULK "DateOnlyTable"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"DateOnlyTable" "t1"
ORDER BY
	"t1"."Id"

