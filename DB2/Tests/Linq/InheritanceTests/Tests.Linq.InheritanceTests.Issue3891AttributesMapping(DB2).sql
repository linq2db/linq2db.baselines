﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Base"
		(
			"Id"           Int           NOT NULL,
			"Type"         Int           NOT NULL,
			"Name_First"   NVarChar(255)     NULL,
			"Name_Second"  NVarChar(255)     NULL,
			"Test_ChildId" Int           NOT NULL,

			CONSTRAINT "PK_Base" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Type Integer(4) -- Int32
SET     @Type = 1
DECLARE @ChildId Integer(4) -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second VarChar(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO "Base"
(
	"Id",
	"Type",
	"Test_ChildId",
	"Name_First",
	"Name_Second"
)
VALUES
(
	@Id,
	@Type,
	@ChildId,
	@Name_First,
	@Name_Second
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Type Integer(4) -- Int32
SET     @Type = 1
DECLARE @ChildId Integer(4) -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second VarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"Base" "t1"
SET
	"Type" = @Type,
	"Test_ChildId" = @ChildId,
	"Name_First" = @Name_First,
	"Name_Second" = @Name_Second
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
END

