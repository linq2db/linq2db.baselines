﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"    Int         NOT NULL,
			"Int"   Int             NULL,
			"Enum"  NVarChar(5)     NULL,
			"CEnum" VarChar(20)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int Integer(4) -- Int32
SET     @Int = 2
DECLARE @Enum VarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- String
SET     @In_1 = '___Value4___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."CEnum" IN (@In) OR "s"."CEnum" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @In VarChar(12) -- String
SET     @In = '___Value3___'
DECLARE @In_1 VarChar(12) -- String
SET     @In_1 = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NotIn VarChar(12) -- String
SET     @NotIn = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."CEnum" NOT IN (@NotIn) AND "s"."CEnum" IS NOT NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NotIn VarChar(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 VarChar(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."CEnum" NOT IN (@NotIn, @NotIn_1) OR "s"."CEnum" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END

