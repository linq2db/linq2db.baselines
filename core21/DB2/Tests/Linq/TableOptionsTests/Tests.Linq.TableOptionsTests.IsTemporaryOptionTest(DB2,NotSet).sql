BeforeExecute
-- DB2 DB2.LUW DB2LUW

DECLARE GLOBAL TEMPORARY TABLE SESSION."temp_table1"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO SESSION."temp_table1"
(
	ID,
	"Value"
)
VALUES
(1,2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DECLARE GLOBAL TEMPORARY TABLE SESSION."temp_table2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO SESSION."temp_table2"
(
	ID,
	"Value"
)
SELECT
	"t1".ID,
	"t1"."Value"
FROM
	SESSION."temp_table1" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	SESSION."temp_table1" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	SESSION."temp_table2" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO SESSION."temp_table1"
(
	ID,
	"Value"
)
VALUES
(2,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 3

INSERT INTO SESSION."temp_table1"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value_1
)

BeforeExecute
INSERT BULK SESSION."temp_table1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

TRUNCATE TABLE SESSION."temp_table1" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW

TRUNCATE TABLE SESSION."temp_table2" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE SESSION."temp_table2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE SESSION."temp_table1"

