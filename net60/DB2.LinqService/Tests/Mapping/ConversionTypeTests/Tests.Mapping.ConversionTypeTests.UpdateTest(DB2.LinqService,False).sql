﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TrimTestTable"
		(
			ID     Int          NOT NULL,
			"Data" NVarChar(50)     NULL,

			CONSTRAINT "PK_TrimTestTable" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***XXX***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @Data VarChar(9) -- String
SET     @Data = '***HHH***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Data VarChar(9) -- String
SET     @Data = '***VVV***'

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = @Data
WHERE
	"TrimTestTable".ID = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = @Data
WHERE
	"TrimTestTable"."Data" = '***XXX***'

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = @Data
WHERE
	"TrimTestTable"."Data" = @p

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
END

